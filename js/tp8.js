function bonus (){
	var produit=prompt ("Quel est le produit ?")
	var prix=prompt ("Quel est le prix ?")
	var quantite=prompt ("Quel est la quantité ?")
}

function bonus(){
	var totalf = 0 
	var total = ""
	var c = ""
	do {
		var article = prompt ("Votre article")
		var price = prompt ("Le prix")
		var quantity = prompt ("La quantité")

		alert ("Vos" + article + "couterons" + price + quantity )
		total = Number(price)* Number(quantity)
		totalf += total 
		c+= ("Article : " +article+ <br> PRIX : price + "€"+ "Quantité : "+quantity+"  <br> Total : "+total+"€"+"<br><<br><br>")
		alert('Vos articles additionnés couterons' + totalf + €)

		next = prompt("Voulez vous continuer (OUI/STOP) ?")
	}
while(next != "STOP");

document.write(c);
document.write("TOTAL FINAL : "+totalf+"€");

}
