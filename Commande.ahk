; Assigner la touche ² pour ouvrir la fenêtre de commande
²::OpenCommandWindow()

OpenCommandWindow() {
    ; Créer la fenêtre de commande
    Gui, CommandWindow:+ToolWindow -Caption +AlwaysOnTop
    Gui, CommandWindow:Color, FFFFFF
    Gui, CommandWindow:Add, Text,, Commandes possibles :
    Gui, CommandWindow:Add, Button, gRunLobbyScript, /lobby
    Gui, CommandWindow:Add, Button, gRunRtpScript, /rtp
    Gui, CommandWindow:Show,, Commandes

    return
}

RunLobbyScript:
    ; Fermer la fenêtre de commande
    Gui, CommandWindow:Destroy

    ; Envoyer la séquence de touches pour rejoindre le lobby
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

RunRtpScript:
    ; Fermer la fenêtre de commande
    Gui, CommandWindow:Destroy

    ; Envoyer la séquence de touches pour utiliser la commande /rtp
    Send, !{Tab}
    Sleep, 200
    Send, {Escape}
    Sleep, 200
    Send, t
    Sleep, 200
    Send, /rtp
    Sleep, 200
    Send, {Enter}

    return
