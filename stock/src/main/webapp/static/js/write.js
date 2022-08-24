/**
 *
 */

document.addEventListener("DOMContentLoaded", () => {
  const board_table = document.querySelector("table.board");

  board_table?.addEventListener("click", (e) => {
    const td = e.target;
    if (td.tagName == "TD") {
      const tr = tr.closest("TR");
      const b_num = tr.dataset.b_num;

      document.location.href = `${rootPath}/board/${b_num}/board_detail`;
    }
  });
});
