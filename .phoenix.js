Key.on('`', ['control'], () => {
    let kitty = App.get('kitty');

    if (kitty) {
        if (kitty.isHidden()) {
            kitty.show();
            kitty.focus();

            placeWindow(kitty);
        } else {
            kitty.hide();
        }
    } else {
        kitty = App.launch('kitty', { 'focus': true });
        Timer.after(0.5, () => placeWindow(kitty));
    }
});

function placeWindow(kitty) {
    const window = kitty.mainWindow();
    if (!window) return;

    const screen = screenWithMouse();
    if (!screen) return;

    const space = screen.currentSpace();
    const frame = screen.flippedVisibleFrame();

    window.setFrame({
        x: 0,
        y: 0,
        width: frame.width,
        height: frame.height / 2,
    });

    space.moveWindows([window]);
}

function screenWithMouse() {
    const location = Mouse.location();
    return Screen.all().find((screen) =>
        screenContainsPoint(screen, location)
    );
}

function screenContainsPoint(screen, point) {
    const frame = screen.flippedFrame();
    return (
        point.x >= frame.x &&
        point.x <= frame.x + frame.width &&
        point.y >= frame.y &&
        point.y <= frame.y + frame.height
    );
}
