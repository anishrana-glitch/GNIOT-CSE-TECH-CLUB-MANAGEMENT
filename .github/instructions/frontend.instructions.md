---
applyTo: "frontend/**"
---

# Frontend Instructions

- Use React, JavaScript, Vite, and Tailwind CSS. Follow the existing structure and do not migrate to another framework.
- Use React Router for navigation, TanStack Query for server state, and React Hook Form with Zod for forms when those libraries are needed.
- Reuse existing components and styles before adding new abstractions.
- Keep components focused and accessible. Use semantic HTML and meaningful labels.
- Use Axios or Fetch consistently with the project's established API client pattern; do not add a competing HTTP library.
- Keep public, verified-student, and administrator concerns clearly separated in routes and UI components.
- Do not implement authentication assumptions without coordinated backend contracts.
- Preserve existing behavior and run `npm run lint` and `npm run build` for applicable frontend changes.
- Add Vitest coverage when meaningful behavior is introduced or corrected.
