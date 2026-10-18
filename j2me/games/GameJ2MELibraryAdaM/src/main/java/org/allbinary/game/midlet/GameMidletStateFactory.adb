--  Generated Code Do Not Modify


with org.allbinary.game.state.GameStateFactory_Package; use org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package body org.allbinary.game.midlet.GameMidletStateFactory_Package is

   package GameStateFactory_Package renames Standard.org.allbinary.game.state.GameStateFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   procedure Initialize_Fields (This : in out GameMidletStateFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.currentGameState := GameStateFactory_Package.getInstance.NO_GAME_STATE;
   end Initialize_Fields;


   procedure Initialize (This : in out GameMidletStateFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameMidletStateFactory_Access is
      This : constant GameMidletStateFactory_Access := new GameMidletStateFactory;
   begin
      GameMidletStateFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return GameMidletStateFactory_Access is
   begin
        return GameMidletStateFactory_Package.INSTANCE;
   end getInstance;

   function getCurrentGameState (This : in out GameMidletStateFactory) return GameState_Access is
   begin
        return This.currentGameState;
   end getCurrentGameState;

   procedure setCurrentGameState (This : in out GameMidletStateFactory; currentGameState_Param : access GameState_Package.GameState'Class) is
      currentGameState : constant GameState_Access := GameState_Access (currentGameState_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.CURRENT).append (To_Unbounded_String (" GameState: ")).append (StringUtil_Package.getInstance.toString (currentGameState)).toString, GameMidletStateFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("setCurrentGameState"));
        This.currentGameState := currentGameState;
   end setCurrentGameState;

begin
   null;
   INSTANCE := GameMidletStateFactory_Package.Create;

end org.allbinary.game.midlet.GameMidletStateFactory_Package;


