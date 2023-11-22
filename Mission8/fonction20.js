    function validate() {
      var chaine1 = document.getElementById('chaine1').value;
      var caract = document.getElementById('caract').value;

      if (chaine1.length > 0 && caract.length === 1) {
        alert(`Longueur de chaine1: ${chaine1.length}\nChaine1 en majuscule: ${chaine1.toUpperCase()}\nOccurrences de caract: ${countOccurrences(chaine1, caract)}`);
      } else {
        alert('Veuillez vérifier les champs.');
      }
    }

    function search() {
      var chaine1 = document.getElementById('chaine1').value;
      var chaine2 = document.getElementById('chaine2').value;

      if (chaine1.length > 0 && chaine2.length >= 2) {
        alert(`Occurrences de chaine2 dans chaine1: ${countOccurrences(chaine1, chaine2)}`);
      } else {
        alert('Veuillez vérifier les champs.');
      }
    }

    function countOccurrences(str, substr) {
      var count = 0;
      var index = str.indexOf(substr);
      while (index !== -1) {
        count++;
        index = str.indexOf(substr, index + 1);
      }
      return count;
    }
  