abstract class Employe {
  String get name;
  int get id;

  double calculSalaire();
}

class EmployePermanent implements Employe {
  String name;
  int id;
  int anciennete;
  double salaire;
  EmployePermanent(this.name, this.id, this.anciennete, this.salaire);

  @override
  double calculSalaire() {
    return salaire + anciennete * 100000;
  }
}

class EmployeContract implements Employe {
  String name;
  int id;
  int honoraire;
  double heureTravaillee;

  EmployeContract(this.name, this.id, this.honoraire, this.heureTravaillee);

  @override
  double calculSalaire() {
    return honoraire * heureTravaillee;
  }
}

void main() {
  EmployePermanent Rakoto = new EmployePermanent("Rakoto", 1, 5, 500000);
  EmployeContract Rabe = new EmployeContract("Rabe", 2, 30000, 30);

  print("${Rakoto.name} est un employé permanent" +
      " et son salaire est de ${Rakoto.calculSalaire()} ariary \n" +
      "${Rabe.name} est un contractuel" +
      " et son salaire est de ${Rabe.calculSalaire()} ariary");
}
