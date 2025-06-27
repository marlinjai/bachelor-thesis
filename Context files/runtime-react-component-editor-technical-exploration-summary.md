# Runtime React Component Editor — Technical Exploration Summary

## 🧠 Core Objectives
- Create a drag-and-drop React-based visual editor with live component rendering.
- Use a **Virtual DOM (VDOM)** structure and dynamic rendering via `React.createElement`.
- Support component **state**, **event handling**, **recursive rendering**, and **dynamic styling**.
- Explore how tools like **Framer** manage component rendering and runtime customization.

---

## 🛠 Technologies and Design Principles

### ⚛ React + MobX-State-Tree (MST)
- **MST** manages component tree and state:
  ```ts
  {
    id: "button1",
    type: "button",
    props: { label: "Click Me" },
    state: { count: 0 }
  }


* Components are rendered using:

  ```ts
  React.createElement(type, props, children)
  ```

### 🔄 Runtime Updates

* State changes are localized:

  * MST ensures only affected nodes re-render (`observer`-wrapped components).
  * React’s reconciliation ensures DOM efficiency.

### 🧩 Adding, Removing, Reordering

* Tree actions:

  * `addChild`, `removeChild(id)`, `reorderChild(from, to)`
* Supports user-driven UI manipulation (like Framer).

---

## 🧠 State & Props Handling

### ✅ Best Practices

* Store **immutable props** for static data (e.g. `label`, `color`)
* Store **mutable state** for dynamic data (e.g. `count`, `active`)
* Use MST's `.setState()` and `.setProps()` to update values.

### ❗ Storing State in Props?

* Technically possible (e.g. `props.value = 2`), but not idiomatic.
* Better to define a separate `state` object for logic/stateful behavior.

---

## 🧙 Dynamic User-Defined Functions

### ✅ User-defined `onClick` Actions

* User inputs stringified JS:

  ```ts
  () => alert("Clicked!")
  ```
* Parsed and bound at runtime:

  ```ts
  const func = new Function("return " + userCode)();
  node.setProps({ onClick: func });
  ```

---

## 🎨 CSS Property Handling

### ✅ Structured System for Styles

* Central config: `CSS_PROPERTIES` holds metadata for inputs

  * Types: `string`, `number`, `color`, `select`
  * Supports grouping (Layout, Spacing, Typography, etc.)

### ✅ Dynamic Rendering of Style Editor

* `PropertiesPanel` uses this schema to render UI dynamically.
* Changes are applied with:

  ```ts
  selectedComponent.setStyle(propertyName, value);
  ```

---

## 🧬 Component Rendering

```tsx
const renderTree = (node) => {
  return React.createElement(
    node.type,
    {
      key: node.id,
      ...node.props,
      ...generateInteractionHandlers(node.state?.interactions)
    },
    node.children?.map(renderTree)
  );
};
```

---

## 🔮 Framer & Webflow Insights

### Framer

* Uses `React.createElement` internally.
* State likely stored per node in a runtime model.
* Drag-and-drop updates internal tree → re-rendered live.
* Framer Motion handles animations; Monaco editor enables custom code.

### Webflow

* Less reactive (no runtime JS).
* Actions defined as interactions (click → animate X).

---

## 📈 Next Steps for POC

* Use MST to model the component tree.
* Dynamically render using `React.createElement`.
* Build a `PropertiesPanel` based on `CSS_PROPERTIES`.
* Add support for event-driven interactions.
* Allow adding/removing components and live state editing.

---

## ✨ Extras (Future Features)

* Undo/Redo: via MST’s `UndoManager`.
* State persistence: `getSnapshot` + `applySnapshot`.
* Page routing support (via dynamic routing layer).
* Server-persisted projects with hydration.

```

---

Let me know if you'd like this saved to a file or extended into a full technical spec or implementation guide.
```
