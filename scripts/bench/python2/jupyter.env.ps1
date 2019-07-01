$homeDir = Get-ConfigValue "HomeDir"
$jupyterConfigDir = "$homeDir\.jupyter"
$jupyterCustomDir = "$jupyterConfigDir\custom"
$jupyterCustomFile = "$jupyterCustomDir\custom.js"

$keybinding = Get-AppConfigValue "Bench.Python2.Jupyter" "KeyBindings"

if ($keybinding) {

    if (!(Test-Path $jupyterConfigDir)) { mkdir $jupyterConfigDir | Out-Null }
    if (!(Test-Path $jupyterCustomDir)) { mkdir $jupyterCustomDir | Out-Null }
    if (!(Test-Path $jupyterCustomFile)) {

        $jsCode = @"
require(["base/js/namespace", "notebook/js/cell", "codemirror/keymap/${keybinding}"],
    function(IPython, cell, sublime_keymap) {
        cell.Cell.options_default.cm_config.keyMap = '${keybinding}';
        var cells = IPython.notebook.get_cells();
        for (var i = 0; i < cells.length; i++) {
            cells[i].code_mirror.setOption('keyMap', '${keybinding}');
        }
    }
);
"@
        $jsCode | Out-File $jupyterCustomFile
    }

}
