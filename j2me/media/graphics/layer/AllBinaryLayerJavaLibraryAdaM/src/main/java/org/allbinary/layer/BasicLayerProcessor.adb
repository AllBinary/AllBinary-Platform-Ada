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


package body org.allbinary.layer.BasicLayerProcessor_Package is

   procedure Initialize_Fields (This : in out BasicLayerProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicLayerProcessor'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicLayerProcessor_Access is
      This : constant BasicLayerProcessor_Access := new BasicLayerProcessor;
   begin
      BasicLayerProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   procedure add (This : in out BasicLayerProcessor; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        if not (This.list.contains (layerInterface)) then
            This.list.add (layerInterface);
        end if;
   end add;

   --  throws Exception
   procedure process (This : in out BasicLayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", CommonStrings_Package.getInstance.NOT_IMPLEMENTED));
   end process;

   function getList (This : in out BasicLayerProcessor) return BasicArrayList_Access is
   begin
        return This.list;
   end getList;

begin
   null;
   NULL_LAYER_PROCESSOR := BasicLayerProcessor_Package.Create;

end org.allbinary.layer.BasicLayerProcessor_Package;


