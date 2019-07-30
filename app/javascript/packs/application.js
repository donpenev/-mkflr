import "bootstrap";

const cards = document.querySelectorAll(".mkflr_card");

  cards.forEach((card) => {
    card.addEventListener("mouseover", (event) => {
      const cardToHideId = event.currentTarget.id.replace("mkflr_card_", "");
      // console.log(cardToHideId);
      const controls = document.getElementById("mkflr_product_controls_" + cardToHideId);
      controls.style.display = "block";
      const btn = document.getElementById("mkflr_product_btn_" + cardToHideId);
      btn.style.display = "block";
      const p = document.getElementById("mkflr_product_p_" + cardToHideId);
      p.style.display = "block";
      const blend = document.getElementById("mkflr_product_blend_" + cardToHideId);
      blend.style.display = "none";
      const notes = document.getElementById("mkflr_product_notes_" + cardToHideId);
      notes.style.display = "none";
      const flavour = document.getElementById("mkflr_product_flavour_" + cardToHideId);
      flavour.style.display = "none";
    });
  });

  const reshowElements = cards.forEach((card) => {
    card.addEventListener("mouseout", (event) => {
        const cardToHideId = event.currentTarget.id.replace("mkflr_card_", "");
        const controls = document.getElementById("mkflr_product_controls_" + cardToHideId);
        controls.style.display = "none";
        const btn = document.getElementById("mkflr_product_btn_" + cardToHideId);
        btn.style.display = "none";
        const p = document.getElementById("mkflr_product_p_" + cardToHideId);
        p.style.display = "none";
        const blend = document.getElementById("mkflr_product_blend_" + cardToHideId);
        blend.style.display = "block";
        const notes = document.getElementById("mkflr_product_notes_" + cardToHideId);
        notes.style.display = "block";
        const flavour = document.getElementById("mkflr_product_flavour_" + cardToHideId);
        flavour.style.display = "block";
    });
  });


// setTimeout(() => {
  // function to execute
// }, 200)



