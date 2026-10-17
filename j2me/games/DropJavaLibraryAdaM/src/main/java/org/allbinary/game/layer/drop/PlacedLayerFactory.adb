--  Generated Code Do Not Modify


package body org.allbinary.game.layer.drop.PlacedLayerFactory_Package is

   procedure Initialize_Fields (This : in out PlacedLayerFactory'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out PlacedLayerFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PlacedLayerFactory_Access is
      This : constant PlacedLayerFactory_Access := new PlacedLayerFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure clear (This : in out PlacedLayerFactory) is
   begin
        This.list.clear;
   end clear;

   function getInstance return PlacedLayerFactory_Access is
   begin
        return PlacedLayerFactory_Package.instance;
   end getInstance;

   function getSize (This : in out PlacedLayerFactory) return Integer is
   begin
        return This.list.size;
   end getSize;

   function getRandomInstance (This : in out PlacedLayerFactory) return AllBinaryLayerFactoryInterface_Access is
   begin
        return AllBinaryLayerFactoryInterface_Access (This.basicArrayListUtil.getRandom (This.list));
   end getRandomInstance;

   procedure add (This : in out PlacedLayerFactory; layerInterfaceFactoryInterface : AllBinaryLayerFactoryInterface_Access) is
   begin
        This.list.add (layerInterfaceFactoryInterface);
   end add;

   procedure getInstance is
      Java_Result : constant PlacedLayerFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getSize (This : in out PlacedLayerFactory) is
      Java_Result : constant Integer := PlacedLayerFactory'Class (This).getSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSize;

   procedure getRandomInstance (This : in out PlacedLayerFactory) is
      Java_Result : constant AllBinaryLayerFactoryInterface_Access := PlacedLayerFactory'Class (This).getRandomInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRandomInstance;

begin
   null;
   instance := PlacedLayerFactory_Package.Create;

end org.allbinary.game.layer.drop.PlacedLayerFactory_Package;


