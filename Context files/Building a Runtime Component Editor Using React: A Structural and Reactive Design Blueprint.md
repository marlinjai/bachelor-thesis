
# Building a Runtime Component Editor Using React: A Structural and Reactive Design Blueprint

## Abstract

This thesis-style document explores the architectural foundations and technical implementation strategy for building a visual runtime editor inspired by Framer, using React, JSX, MobX-State-Tree (MST), and dynamic `createElement()` rendering. The goal is to replicate key aspects of Framer's reactive, state-aware visual editor with support for state management, CSS properties, dynamic interaction logic, and runtime rendering, all while keeping the architecture scalable and serializable.

---

## 1. Introduction

Modern web development increasingly relies on no-code and low-code platforms like Framer and Webflow. These platforms abstract away traditional frontend engineering while offering visual manipulation of React-like component trees. To build a comparable tool from scratch, we must deeply understand:

* JSX compilation and rendering via `React.createElement()`
* React state and reconciliation model
* Virtual DOM vs Fiber architecture
* Dynamic runtime rendering and user-defined logic
* Serialization and reactive stores for component data

This document presents a coherent and scalable runtime architecture with emphasis on reactivity, observability, state separation, and component hierarchy.

---

## 2. JSX and `React.createElement` Fundamentals

### 2.1 JSX Compilation

JSX is syntactic sugar transformed by Babel:

```jsx
<button onClick={() => setCount(count + 1)}>{count}</button>
```

⬇️ Becomes:

```ts
React.createElement("button", { onClick: () => setCount(count + 1) }, count);
```

### 2.2 Element Type Definition

```ts
function createElement<P>(
  type: string | React.JSXElementConstructor<P>,
  props?: (P & { children?: ReactNode }) | null,
  ...children: ReactNode[]
): React.ReactElement<P>
```

The first argument can be a tag or a component. Props and children form the virtual DOM node.

---

## 3. React Reconciliation and Fiber

### 3.1 `useState` and Hook Management

React tracks state via a fiber node's `memoizedState`, a linked list of hooks:

```ts
FiberNode {
  memoizedState → Hook1 → Hook2 → ...
}
```

Calling `setState()` queues an update in the hook's update queue. On the next render, React applies updates, rebuilds the JSX tree, diffs it, and updates the real DOM minimally.

### 3.2 Fiber's Purpose

* Incremental rendering
* Interruptible work
* Efficient scheduling
* Hook state preservation

---

## 4. Runtime Component Tree Design

### 4.1 Unified Tree Architecture

We propose a single tree where each node holds:

```ts
interface ComponentNode {
  id: string;
  type: string;
  props: Record<string, any>;
  state: Record<string, any>;
  children: ComponentNode[];
}
```

This mirrors Framer's dynamic structure and enables snapshotting, undo/redo, and server-side persistence.

### 4.2 Benefits of Unified Tree

* One source of truth
* Easy serialization for collaboration
* Supports nested reactivity and local/global state

---

## 5. Reactive State Management with MobX-State-Tree

### 5.1 Observability via `observer()`

MobX tracks all observables used during a component render. If any change, it re-renders the component.

### 5.2 Hook-Free Reactivity

Unlike React's `useState`, MST enables dynamic reactivity even for runtime-generated structures:

```ts
const node = ComponentNode.create(...);
node.setState({ count: node.state.count + 1 });
```

### 5.3 Undo/Redo Support

MST supports undo/redo via:

```ts
import { UndoManager } from 'mst-middlewares';
const undoManager = UndoManager.create({}, { targetStore: tree });
```

---

## 6. Dynamic Component Rendering

### 6.1 Recursive Renderer

```tsx
function renderTree(node) {
  return React.createElement(
    node.type,
    {
      key: node.id,
      ...node.props,
      ...generateInteractionHandlers(node.state?.interactions)
    },
    node.children.map(renderTree)
  );
}
```

This allows fully dynamic runtime rendering without a build step.

---

## 7. CSS Property Abstraction

### 7.1 Structured Schema

```ts
interface CSSPropertyDefinition {
  name: string;
  type: "string" | "number" | "color" | "select";
  options?: string[];
  unit?: string;
  defaultValue?: string;
}
```

The editor UI can render dynamic style editors from this config.

### 7.2 Runtime Editing Panel

```tsx
<input type="color" value={value} onChange={(e) => handleStyleChange(name, e.target.value)} />
```

This bridges user input to live prop/state updates on the tree.

---

## 8. User-defined Logic and Interactions

### 8.1 Defining Dynamic Actions

User-defined functions (like `onClick`) are stored in state:

```ts
state: {
  interactions: [
    { trigger: "onClick", action: () => alert("Hello") }
  ]
}
```

### 8.2 Safe Evaluation

Evaluate strings as functions with safety constraints:

```ts
const fn = new Function('return ' + userInput)();
```

---

## 9. Architectural Comparison: Framer vs Webflow vs React

| Feature       | React            | Framer                  | Webflow            |
| ------------- | ---------------- | ----------------------- | ------------------ |
| State         | `useState`/Fiber | External JSON + runtime | No real state      |
| Rendering     | JSX/VDOM         | React.createElement     | Static DOM         |
| Interactions  | JS functions     | Visual + code optional  | Visual only        |
| Serialization | Custom           | Built-in                | HTML/CSS export    |
| Dynamic logic | Full JS support  | Controlled JS sandbox   | Limited animations |

---

## 10. Conclusion

Building a runtime visual editor is fully feasible using:

* React’s dynamic `createElement`
* MST for reactivity and persistence
* One unified component/state tree
* Declarative style schema
* User-definable logic

This approach allows scalable development of tools akin to Framer, where designers and developers collaborate through a shared live-editable, serializable component model.

---

## Appendix: Technologies Used

* React 18+
* MobX-State-Tree
* Babel (JSX transform)
* TypeScript
* JSON-based component schemas
* UndoManager from mst-middlewares
