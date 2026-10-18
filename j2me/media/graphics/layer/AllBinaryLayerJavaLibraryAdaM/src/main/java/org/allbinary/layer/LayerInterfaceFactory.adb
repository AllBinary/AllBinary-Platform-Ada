--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;

package body org.allbinary.layer.LayerInterfaceFactory_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   procedure Initialize_Fields (This : in out LayerInterfaceFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.list := BasicArrayListUtil_Package.getInstance.getImmutableInstance;
      This.HASHTABLE_LABEL := To_Unbounded_String ("Hashtable: ");
   end Initialize_Fields;

   procedure Initialize (This : in out LayerInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LayerInterfaceFactory_Access is
      This : constant LayerInterfaceFactory_Access := new LayerInterfaceFactory;
   begin
      LayerInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LayerInterfaceFactory_Access is
   begin
        return LayerInterfaceFactory_Package.SINGLETON;
   end getInstance;

   procedure init (This : in out LayerInterfaceFactory) is
   begin
        This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end init;

   --  throws Exception
   function getNexInstance (This : in out LayerInterfaceFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) return AllBinaryLayer_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      commonStrings : CommonStrings_Access;
      typeInteger : Integer;
      layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (StringMaker_Package.Create.append (This.HASHTABLE_LABEL).append (StringUtil_Package.getInstance.toString (hashtable)).toString, LayerInterfaceFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
        typeInteger := Integer (hashtable.get (Java_Object_Access (Layer_Package.ID)));
        layerInterfaceFactoryInterface := LayerInterfaceFactoryInterface_Access (This.list.objectArray ((Integer (typeInteger)) - (1)));
        return layerInterfaceFactoryInterface.getNextInstance (hashtable, x, y, z);
   end getNexInstance;

   procedure add (This : in out LayerInterfaceFactory; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class) is
      layerInterfaceFactoryInterface : constant LayerInterfaceFactoryInterface_Access := LayerInterfaceFactoryInterface_Access (layerInterfaceFactoryInterface_Param);
   begin
        This.list.add (Java_Object_Access (layerInterfaceFactoryInterface));
   end add;

   procedure getNexInstance (This : in out LayerInterfaceFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) is
      Java_Result : constant AllBinaryLayer_Access := LayerInterfaceFactory'Class (This).getNexInstance (hashtable_Param => hashtable_Param, x => x, y => y, z => z);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNexInstance;

begin
   null;
   SINGLETON := LayerInterfaceFactory_Package.Create;

end org.allbinary.layer.LayerInterfaceFactory_Package;


