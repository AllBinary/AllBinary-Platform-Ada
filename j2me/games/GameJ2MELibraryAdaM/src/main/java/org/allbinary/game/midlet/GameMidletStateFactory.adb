--  Generated Code Do Not Modify


package body org.allbinary.game.midlet.GameMidletStateFactory_Package is

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

   procedure setCurrentGameState (This : in out GameMidletStateFactory; currentGameState : GameState_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.CURRENT).append (To_Unbounded_String (" GameState: ")).append (StringUtil_Package.getInstance.toString (currentGameState)).toString, This'Unchecked_Access, To_Unbounded_String ("setCurrentGameState"));
        This.currentGameState := currentGameState;
   end setCurrentGameState;

begin
   null;
   INSTANCE := GameMidletStateFactory_Package.Create;

end org.allbinary.game.midlet.GameMidletStateFactory_Package;


