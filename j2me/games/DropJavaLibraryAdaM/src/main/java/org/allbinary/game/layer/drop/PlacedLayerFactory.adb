--  Generated Code Do Not Modify


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.layer.drop.PlacedLayerFactory_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out PlacedLayerFactory'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
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
      PlacedLayerFactory_Package.Initialize (This.all);
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

   procedure add (This : in out PlacedLayerFactory; layerInterfaceFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class) is
      layerInterfaceFactoryInterface : constant AllBinaryLayerFactoryInterface_Access := AllBinaryLayerFactoryInterface_Access (layerInterfaceFactoryInterface_Param);
   begin
        This.list.add (Java_Object_Access (layerInterfaceFactoryInterface));
   end add;

begin
   null;
   instance := PlacedLayerFactory_Package.Create;

end org.allbinary.game.layer.drop.PlacedLayerFactory_Package;


