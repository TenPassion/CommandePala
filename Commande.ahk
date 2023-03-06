; Assigner la touche ² pour ouvrir la fenêtre de commande
²::OpenCommandWindow()

OpenCommandWindow() {
    ; Créer la fenêtre de commande
    Gui, CommandWindow:+ToolWindow -Caption +AlwaysOnTop
    Gui, CommandWindow:Color, FFFFFF
    Gui, CommandWindow:Add, Text,, Commandes possibles :
    Gui, CommandWindow:Add, Button, gRunScript, /lobby
    Gui, CommandWindow:Show,, Commandes

    return
}

RunScript:
    ; Fermer la fenêtre de commande
    Gui, CommandWindow:Destroy

    ; Envoyer la séquence de touches
    Send, !{Tab}
    Sleep, 200
    Send, {Escape}
    Sleep, 200
    Send, t
    Sleep, 200
    Send, /lobby
    Sleep, 200
    Send, {Enter}

    return

