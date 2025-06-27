# Key Findings & Insights: Framer-like Builder with MST + Next.js

## 🧠 Core Architectural Insights

- **Framer does not export static HTML/CSS/JS**: Instead, it relies on a React runtime system that dynamically renders components, using a centralized data model to drive the UI.
- **Live Preview System**:
  - MST tree (or JSON) acts as a centralized representation of the layout.
  - React component tree is recursively generated from the MST data.
  - Changes to state reflect instantly in the preview via reactivity (MobX or similar).
  - Preview often rendered inside an **iframe** for isolation and communication via `postMessage` or shared state.

## 📦 Proof of Concept (PoC) Roadmap

### Week 1: Core MST Models + Preview
- Create MST models: `ProjectModel`, `PageModel`, `ElementModel`.
- Recursive React renderer to transform MST into elements (`renderElement`).
- Basic preview area that reflects MST updates in real time.

### Week 2: Editable UI & Drag-and-Drop
- Sidebar for editing styles/content.
- Use `react-dnd` for reordering elements.
- Element selection and live highlighting.

### Week 3: Class System
- Introduce class map in MST for reusable styles.
- Merge class + inline styles at render time.
- Allow creation and editing of combo classes.

### Week 4: Responsive & Export
- Support responsive breakpoints and media queries.
- Build export/publish to JSON and/or HTML/CSS.
- Optionally use iframe for preview and export.

### Week 5: Undo/Redo, Collaboration
- Add undo/redo with MST snapshots.
- (Optional) Add CRDT/WebSocket for real-time multi-user editing.

---

## 🌐 SPA Deployment with Next.js

- Use MST as the app state to generate the page dynamically.
- Render using `PageRenderer` React component inside `/[username]/[slug].js`.
- Support SSR and ISR for dynamic/static page builds.
- Store serialized MST state in a DB, fetch via `getStaticProps` or API.

### Dynamic Page Workflow:
1. **User creates page in `/editor`**
2. **MST state saved via API** to DB.
3. **Public page URL**: `/[username]/[pageSlug]`
4. Render with `PageRenderer` using serialized MST snapshot
5. Use ISR or SSR for up-to-date delivery

---

## 📄 Exporting Options

- **To JSON**: serialize MST via `getSnapshot()`
- **To HTML/CSS**:
  - Traverse MST tree to generate HTML string.
  - Extract inline styles or generate CSS class map.
  - Package into `.zip` with `index.html`, `styles.css`

---

## ✅ Feasibility & Scalability with Next.js

- Fully feasible to build a Framer-style builder using MST + React + Next.js.
- Pages can be dynamically rendered or statically generated.
- User-generated content can be exported, hosted, and versioned easily.
- Can integrate real-time collaboration, custom code injection, and dynamic APIs.

---

## 🔧 Next Steps

- Create a basic MST + React renderer with static JSON input.
- Scaffold a Next.js app with dynamic routes `/[username]/[slug]`.
- Set up basic editor (drag/drop, sidebar) and preview iframe.
- Implement serialization + rendering pipeline.
- Add basic persistence via localStorage or simple backend.

> This document serves as a base for internal architecture and PoC planning for a Framer-style website builder using MST and Next.js.
