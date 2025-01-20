### **Must Have**

1. **Level change**
    
    - **Systems**:
        - Use the **Level Streaming System** to load/unload levels seamlessly.
        - Implement transitions with **Game Mode** logic.
    - **Best Practices**:
        - Keep levels modular and lightweight for fast loading.
        - Use trigger volumes to detect when the player moves to a new area.
2. **Save game**
    
    - **Systems**:
        - Use **SaveGame Blueprint/Classes** to store and load player progress.
    - **Best Practices**:
        - Save data like level, player stats, and inventory as variables.
        - Test edge cases to avoid corrupted saves.
3. **Attack**
    
    - **Systems**:
        - Use **Input Actions** for player inputs via the Enhanced Input System.
        - Set up attack animations using **Flipbooks** or **2D Sprites**.
        - Integrate **Damage Systems** via health components.
    - **Best Practices**:
        - Define attack hitboxes using **Collision Channels** for precision.
4. **Interaction (World, NPC, Monsters)**
    
    - **Systems**:
        - Use **Interfaces** to handle interaction logic (e.g., talking, triggering events).
        - Leverage **Behavior Trees** for simple monster AI.
    - **Best Practices**:
        - Use a unified interaction system for all interactable objects.
        - Manage interactions with clearly defined player proximity checks (Sphere Collisions).
5. **Player character**
    
    - **Systems**:
        - Use **Paper2D Characters** with a custom **Player Controller**.
    - **Best Practices**:
        - Use modular character components (movement, stats, abilities).
        - Ensure animations align with physics for smoother transitions.
6. **Enemy character**
    
    - **Systems**:
        - Use **AI Controllers** and **Behavior Trees** for simple behaviors.
        - Setup enemy visuals via **Paper2D Sprites** or Flipbooks.
    - **Best Practices**:
        - Use separate collision profiles for damage and movement.
7. **Inventory**
    
    - **Systems**:
        - Create an **Actor Component** for inventory.
        - Use **UMG Widgets** for the inventory UI.
    - **Best Practices**:
        - Keep the inventory logic independent of the player.
8. **Player stats**
    
    - **Systems**:
        - Use **Data Tables** for storing stat values.
        - Bind stats to **Blueprint Variables**.
    - **Best Practices**:
        - Centralize stat management in a dedicated component or class.
9. **Sound effects**
    
    - **Systems**:
        - Use **Sound Cues** for sound design.
        - Add triggers for sounds via Animation Notifies or Gameplay Events.
    - **Best Practices**:
        - Normalize audio levels to avoid peaks.
10. **HUD**
    
    - **Systems**:
        - Use **UMG Widgets** to create HUD elements.
    - **Best Practices**:
        - Keep HUD minimal and responsive for clarity.
        - Use blueprints for easy iteration but plan for optimization in C++ if needed.
11. **Pause**
    
    - **Systems**:
        - Leverage the **Pause Game** node and create a custom pause menu with **UMG Widgets**.
    - **Best Practices**:
        - Disable player input during pause, but allow UI navigation.

---

### **Should Have**

1. **Controller support**
    
    - **Systems**:
        - Use **Enhanced Input System** for customizable input mappings.
    - **Best Practices**:
        - Test navigation for menus and gameplay thoroughly with controllers.
2. **Puzzles**
    
    - **Systems**:
        - Use **Blueprints** for puzzle mechanics.
        - Integrate interaction systems like switches or triggers.
    - **Best Practices**:
        - Keep puzzles modular to re-use elements across levels.
3. **Keys that open doors**
    
    - **Systems**:
        - Use **Interfaces** to handle key collection and door unlocking logic.
    - **Best Practices**:
        - Ensure UI feedback when a key is collected.
4. **Overworld map**
    
    - **Systems**:
        - Use **Tile Maps** for creating an overview of the world.
    - **Best Practices**:
        - Use minimal assets for readability and clarity.
5. **Loading screen**
    
    - **Systems**:
        - Implement **Level Streaming** with a custom **Loading Widget**.
    - **Best Practices**:
        - Use progress bars or animations to indicate loading status.
6. **Settings menu**
    
    - **Systems**:
        - Create a **UMG Widget** with bindings for game settings.
        - Use the **Game User Settings** class for saving preferences.
    - **Best Practices**:
        - Include options for audio, controls, and graphics (even minimal for 2D games).
7. **Background artwork**
    
    - **Systems**:
        - Use **Parallax Scrolling Components**.
    - **Best Practices**:
        - Keep background assets lightweight and modular.
8. **Music**
    
    - **Systems**:
        - Use **Audio Components** with music loops.
    - **Best Practices**:
        - Add adaptive music changes tied to gameplay events.
9. **Storytelling**
    
    - **Systems**:
        - Implement **Dialog Widgets** for text-based storytelling.
    - **Best Practices**:
        - Use timers or triggers to manage pacing.
10. **Abilities**
    
    - **Systems**:
        - Use **Blueprints** to define abilities and their effects.
    - **Best Practices**:
        - Centralize ability cooldown and logic in components.

---

### **Could Have**

1. **Branching narrative/dialogue**
    
    - **Systems**:
        - Use **Blueprint Function Libraries** for managing dialogue trees.
    - **Best Practices**:
        - Test logic thoroughly to prevent dead-end scenarios.
2. **Using/reading books**
    
    - **Systems**:
        - Use **Text Widgets** for book displays.
    - **Best Practices**:
        - Add bookmarks or highlights to improve usability.
3. **Voice acting**
    
    - **Systems**:
        - Integrate voice files into **Sound Cues**.
    - **Best Practices**:
        - Keep VO files short and clear.
4. **Particles**
    
    - **Systems**:
        - Use **Niagara System** for advanced particle effects.
    - **Best Practices**:
        - Optimize particles to prevent frame rate drops.
5. **Background parallax**
    
    - **Systems**:
        - Use **Parallax Layering** via **Blueprints** or custom scripts.
    - **Best Practices**:
        - Ensure assets scale properly with camera movements.
6. **Multiplayer**
    
    - **Systems**:
        - Use **Online Subsystem** for networking.
    - **Best Practices**:
        - Keep functionality minimal to avoid scope creep.
7. **Place objects/Drop objects**
    
    - **Systems**:
        - Use **Physics Handles** for drag/drop mechanics.
    - **Best Practices**:
        - Ensure objects snap to grid or valid placements.