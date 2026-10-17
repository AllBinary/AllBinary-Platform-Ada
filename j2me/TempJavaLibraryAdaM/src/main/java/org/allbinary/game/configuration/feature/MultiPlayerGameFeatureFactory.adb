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
      Initialize (This.all);
      return This;
   end Create;

   procedure addCommands (This : in out MultiPlayerGameFeatureFactory; anyType : Java_Object_Access) is
   begin
        null;
   end addCommands;

   procedure getInstance is
      Java_Result : constant MultiPlayerGameFeatureFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := MultiPlayerGameFeatureFactory_Package.Create;

end org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package;


