function allowDropDragOver(e) {
    e.preventDefault();
}

function dragStart(e) {
    e.dataTransfer.setData("dragItemID", e.target.id);
}

function dropIt(e) {
    e.preventDefault();

    // The dragged data is the id of the dragged element
    var dataId = e.dataTransfer.getData("dragItemID");
    e.target.appendChild(document.getElementById(dataId));
}