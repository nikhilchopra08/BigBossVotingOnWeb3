import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Time "mo:base/Time";
import Float "mo:base/Float";
import Text "mo:base/Text";

actor hello {

  stable var playerA = 1;
  playerA:=0;
  stable var playerB = 1;
      playerB := 0;
  stable var playerC = 1;
      playerC := 0;

    Debug.print("votes of A are :" # Nat.toText(playerA));
    Debug.print("votes of B are :" # Nat.toText(playerB));
    Debug.print("votes of C are :" # Nat.toText(playerC));

  public func VoteA() {
    playerA := playerA + 1;
    playerB := playerB;
    playerC := playerC;
    Debug.print("votes of A are :" # Nat.toText(playerA));
    Debug.print("votes of B are :" # Nat.toText(playerB));
    Debug.print("votes of C are :" # Nat.toText(playerC));
  };

  public func VoteB() {
    playerA := playerA;
    playerB := playerB + 1;
    playerC := playerC;
    Debug.print("votes of A are :" # Nat.toText(playerA));
    Debug.print("votes of B are :" # Nat.toText(playerB));
    Debug.print("votes of C are :" # Nat.toText(playerC));
  };

  public func VoteC() : () {
    playerA := playerA;
    playerB := playerB;
    playerC := playerC + 1;
    Debug.print("votes of A are :" # Nat.toText(playerA));
    Debug.print("votes of B are :" # Nat.toText(playerB));
    Debug.print("votes of C are :" # Nat.toText(playerC));
  };
};
