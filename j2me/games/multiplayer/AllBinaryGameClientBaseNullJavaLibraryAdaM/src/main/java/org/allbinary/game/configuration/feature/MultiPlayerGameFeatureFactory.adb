--  Generated Code Do Not Modify


package body org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package is

   procedure Initialize_Fields (This : in out MultiPlayerGameFeatureFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return MultiPlayerGameFeatureFactory_Access is
   begin
        return MultiPlayerGameFeatureFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out MultiPlayerGameFeatureFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MultiPlayerGameFeatureFactory_Access is
      This : constant MultiPlayerGameFeatureFactory_Access := new MultiPlayerGameFeatureFactory;
   begin
      MultiPlayerGameFeatureFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addCommands (This : in out MultiPlayerGameFeatureFactory; anyType : Java_Object_Access) is
      gameCommandsFactory : GameCommandsFactory_Access;
      canvas : Canvas_Access;
   begin
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        canvas := Canvas_Access (anyType);
        canvas.addCommand (gameCommandsFactory.QUIT_COMMAND);
   end addCommands;

begin
   null;
   instance := MultiPlayerGameFeatureFactory_Package.Create;

end org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package;


