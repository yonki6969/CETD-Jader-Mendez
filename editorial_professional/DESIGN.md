---
name: Editorial Professional
colors:
  surface: '#f7f9fb'
  surface-dim: '#d8dadc'
  surface-bright: '#f7f9fb'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f2f4f6'
  surface-container: '#eceef0'
  surface-container-high: '#e6e8ea'
  surface-container-highest: '#e0e3e5'
  on-surface: '#191c1e'
  on-surface-variant: '#45464d'
  inverse-surface: '#2d3133'
  inverse-on-surface: '#eff1f3'
  outline: '#76777d'
  outline-variant: '#c6c6cd'
  surface-tint: '#565e74'
  primary: '#000000'
  on-primary: '#ffffff'
  primary-container: '#131b2e'
  on-primary-container: '#7c839b'
  inverse-primary: '#bec6e0'
  secondary: '#006c49'
  on-secondary: '#ffffff'
  secondary-container: '#6cf8bb'
  on-secondary-container: '#00714d'
  tertiary: '#000000'
  on-tertiary: '#ffffff'
  tertiary-container: '#0b1c30'
  on-tertiary-container: '#75859d'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#dae2fd'
  primary-fixed-dim: '#bec6e0'
  on-primary-fixed: '#131b2e'
  on-primary-fixed-variant: '#3f465c'
  secondary-fixed: '#6ffbbe'
  secondary-fixed-dim: '#4edea3'
  on-secondary-fixed: '#002113'
  on-secondary-fixed-variant: '#005236'
  tertiary-fixed: '#d3e4fe'
  tertiary-fixed-dim: '#b7c8e1'
  on-tertiary-fixed: '#0b1c30'
  on-tertiary-fixed-variant: '#38485d'
  background: '#f7f9fb'
  on-background: '#191c1e'
  surface-variant: '#e0e3e5'
typography:
  display:
    fontFamily: Playfair Display
    fontSize: 64px
    fontWeight: '700'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Playfair Display
    fontSize: 48px
    fontWeight: '700'
    lineHeight: '1.2'
  headline-lg-mobile:
    fontFamily: Playfair Display
    fontSize: 32px
    fontWeight: '700'
    lineHeight: '1.2'
  headline-md:
    fontFamily: Playfair Display
    fontSize: 32px
    fontWeight: '600'
    lineHeight: '1.3'
  headline-sm:
    fontFamily: Playfair Display
    fontSize: 24px
    fontWeight: '600'
    lineHeight: '1.4'
  body-lg:
    fontFamily: Hanken Grotesk
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.7'
  body-md:
    fontFamily: Hanken Grotesk
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.6'
  label-lg:
    fontFamily: Hanken Grotesk
    fontSize: 14px
    fontWeight: '600'
    lineHeight: '1'
    letterSpacing: 0.05em
  label-md:
    fontFamily: Hanken Grotesk
    fontSize: 12px
    fontWeight: '500'
    lineHeight: '1'
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  margin-mobile: 1.5rem
  margin-desktop: 5rem
  gutter: 2rem
  section-gap: 8rem
  stack-sm: 0.5rem
  stack-md: 1.5rem
  stack-lg: 3rem
---

## Brand & Style
The design system is engineered for a dual-purpose environment: showcasing high-end portfolio work and hosting long-form editorial content. The brand personality is authoritative yet modern, blending the timelessness of traditional publishing with the precision of a high-tech agency.

The aesthetic follows a **Modern Minimalist** movement with **Corporate** undertones. It prioritizes clarity, utilizing heavy whitespace to frame imagery and text as if they were in a physical gallery. The emotional response should be one of trust, sophistication, and focused intelligence. Visual clutter is eliminated to ensure the user's attention is directed toward the creative output and the written word.

## Colors
This design system utilizes a high-contrast palette to establish clear hierarchy and professional tone.
- **Primary (Charcoal/Navy):** Used for headings, primary text, and deep backgrounds to anchor the interface.
- **Secondary (Emerald Green):** A vibrant accent reserved exclusively for calls to action, progress indicators, and active states to provide high-energy focal points.
- **Tertiary (Slate):** Used for secondary text, borders, and subtle UI elements to reduce visual weight.
- **Neutral (Off-White/Ice):** Provides a soft, non-pure white canvas that reduces eye strain while maintaining a clean, airy feel.

## Typography
The typographic strategy relies on the tension between a high-contrast Serif and a functional Grotesk. 

**Playfair Display** is used for all major headings to evoke an "editorial" feel typical of premium magazines. For mobile devices, the display and large headline sizes scale down significantly to prevent awkward line breaks while maintaining their bold character.

**Hanken Grotesk** is used for all body text and UI labels. It offers exceptional legibility at small sizes and a neutral, contemporary feel that doesn't compete with the headlines. Body text uses a generous 1.7 line-height to facilitate comfortable long-form reading in the blog sections.

## Layout & Spacing
The layout uses a **Fixed Grid** system for desktop (max-width: 1280px) and a fluid model for mobile. 

- **Desktop:** 12-column grid with a substantial 5rem outer margin to create a "frame" effect around content. 
- **Mobile:** 4-column grid with 1.5rem margins.
- **Rhythm:** A "generous whitespace" philosophy is applied. Sections should be separated by a minimum of 8rem to allow the eye to rest between different projects or articles. 

Spacing units follow a strict scale to maintain consistency in vertical rhythm, ensuring that the distance between a headline and its body text is always 1.5rem (stack-md).

## Elevation & Depth
Depth is achieved through **Tonal Layers** rather than heavy shadows. 

The background uses the Neutral Ice color. Cards and containers use a pure white surface. To separate these from the background, a **Low-contrast outline** (1px solid, 10% opacity of the Primary color) is preferred over drop shadows. 

When an element requires emphasis (like a hovering portfolio card), use a very soft, highly diffused ambient shadow: `0 20px 40px rgba(15, 23, 42, 0.05)`. This creates a "lifted paper" effect that feels tactile but remains clean.

## Shapes
The design system employs a **Soft** shape language. 

Standard components like buttons and input fields use a 0.25rem corner radius. Larger containers, such as project cards and featured images, use a 0.5rem (rounded-lg) radius. This subtle rounding softens the professional navy base, making the interface feel modern and approachable without losing its "editorial" precision.

## Components

### Buttons
- **Solid (Primary):** Primary color background with white text. High-contrast, sharp, and authoritative.
- **Solid (Accent):** Secondary color (Emerald) background for the main CTA.
- **Ghost:** Primary color border (1px) and text, transparent background. Used for secondary actions like "View All Posts."

### Cards
- **Project Cards:** Full-bleed imagery with a subtle 1px border. On hover, the image scales slightly (1.05x) within the container. Titles appear below the image in `headline-sm`.
- **Blog Cards:** Vertical stack. A small date/category label in `label-lg` (uppercase) sits above the `headline-sm` title, followed by a brief excerpt in `body-md`.

### Navigation
- A top-aligned, fixed bar with a backdrop blur effect. The background is 90% white to allow content to scroll underneath subtly. Links use `label-lg` with a 2px bottom border on hover.

### Inputs
- Form fields are minimal: a bottom-border only or a light 4-sided border in Tertiary color. Focus state transitions the border color to the Secondary accent. Labels always sit above the field in `label-md`.

### Portfolio Grid
- Use a masonry or asymmetrical grid to break the monotony of standard blog lists, emphasizing the "creative" nature of the portfolio work.