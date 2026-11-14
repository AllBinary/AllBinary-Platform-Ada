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

   procedure addCommands (This : in out MultiPlayerGameFeatureFactory; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end addCommands;

   procedure addCommands (This : in out MultiPlayerGameFeatureFactory; Value : Unbounded_String) is
   begin
      MultiPlayerGameFeatureFactory'Class (This).addCommands (Java_Box (Value));
   end addCommands;

begin
   null;
   instance := MultiPlayerGameFeatureFactory_Package.Create;

end org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package;


