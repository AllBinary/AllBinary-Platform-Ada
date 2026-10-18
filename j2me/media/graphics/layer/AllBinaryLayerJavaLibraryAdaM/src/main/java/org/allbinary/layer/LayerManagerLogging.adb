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


with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.layer.LayerManagerLogging_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out LayerManagerLogging'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.stringBuilder := StringMaker_Package.Create;
      This.APPEND_Field := To_Unbounded_String ("append");
      This.APPEND_U := To_Unbounded_String (" append: ");
      This.U_AT_U := To_Unbounded_String (" at: ");
      This.ATTEMPT_REMOVE_U := To_Unbounded_String (" Remove Attempt: ");
      This.REMOVE_U := To_Unbounded_String (" Remove: ");
      This.REMOVE_Field := To_Unbounded_String ("remove");
      This.DID_NOT_REMOVE := To_Unbounded_String (" Did not remove: ");
      This.CLEAR_Field := To_Unbounded_String (" Clear List");
   end Initialize_Fields;

   procedure Initialize (This : in out LayerManagerLogging'Class) is
   begin
      LayerManagerLoggingBase_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return LayerManagerLogging_Access is
      This : constant LayerManagerLogging_Access := new LayerManagerLogging;
   begin
      LayerManagerLogging_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LayerManagerLogging_Access is
   begin
        return LayerManagerLogging_Package.instance;
   end getInstance;

   --  throws Exception
   procedure append (This : in out LayerManagerLogging; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        This.stringBuilder.delete (0, This.stringBuilder.length);
        This.logUtil.putF (This.stringBuilder.appendint (Integer (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access)))).append (This.APPEND_U).append (layerInterface.getName).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.APPEND_Field);
   end append;

   procedure appendAt (This : in out LayerManagerLogging; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        This.stringBuilder.delete (0, This.stringBuilder.length);
        This.logUtil.putF (This.stringBuilder.appendint (Integer (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access)))).append (This.APPEND_U).append (layerInterface.getName).append (This.U_AT_U).appendint (index).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.APPEND_Field);
   end appendAt;

   procedure remove (This : in out LayerManagerLogging; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        if (layerInterface) = (null) then
            This.stringBuilder.delete (0, This.stringBuilder.length);
            This.logUtil.putF (This.stringBuilder.appendint (Integer (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access)))).append (This.ATTEMPT_REMOVE_U).append (StringUtil_Package.getInstance.toString (layerInterface)).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.REMOVE_Field);
        else
            This.stringBuilder.delete (0, This.stringBuilder.length);
            This.logUtil.putF (This.stringBuilder.appendint (Integer (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access)))).append (This.ATTEMPT_REMOVE_U).append (layerInterface.getName).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.REMOVE_Field);
        end if;
   end remove;

   procedure removeResult (This : in out LayerManagerLogging; layerManager_Param : access LayerManager_Package.LayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; result : Boolean) is
      layerManager : constant LayerManager_Access := LayerManager_Access (layerManager_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        if (layerInterface) = (null) then
            This.stringBuilder.delete (0, This.stringBuilder.length);
            This.logUtil.putF (This.stringBuilder.appendint (Integer (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access)))).append (This.REMOVE_U).append (StringUtil_Package.getInstance.toString (layerInterface)).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.REMOVE_Field);
        elsif result then
            if LayerManagerLogging_Package.removeFailed then
                This.stringBuilder.delete (0, This.stringBuilder.length);
                This.logUtil.putF (This.stringBuilder.appendint (Integer (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access)))).append (This.REMOVE_U).append (layerInterface.getName).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.REMOVE_Field);
            end if;
        else
            This.stringBuilder.delete (0, This.stringBuilder.length);
            This.logUtil.putF (This.stringBuilder.appendint (Integer (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access)))).append (This.DID_NOT_REMOVE).append (layerInterface.getName).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.REMOVE_Field);
            LayerManagerLogging_Package.removeFailed := True;
        end if;
   end removeResult;

   procedure log (This : in out LayerManagerLogging; layerManager_Param : access LayerManager_Package.LayerManager'Class) is
      layerManager : constant LayerManager_Access := LayerManager_Access (layerManager_Param);
      size : Integer;
      commonSeps : CommonSeps_Access;
      allBinaryLayer : AllBinaryLayer_Access;
      index : Integer;
   begin
        This.stringBuilder.delete (0, This.stringBuilder.length);
        size := layerManager.getSize;
        commonSeps := CommonSeps_Package.getInstance;
        This.stringBuilder.append (To_Unbounded_String (Java_To_Unsigned_String (TsUtil_Package.getInstance.hashCode (layerManager), 16))).append (commonSeps.COLON_SEP);
        This.stringBuilder.appendint (size).append (commonSeps.COLON_SEP);
        allBinaryLayer := null;
        for index in 0 .. (size) - 1 loop
            allBinaryLayer := (AllBinaryLayer_Access (layerManager.getLayerAt (index)));
            This.stringBuilder.append (allBinaryLayer.getName).append (commonSeps.COMMA);
        end loop;
        This.logUtil.putF (This.stringBuilder.toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.REMOVE_Field);
   end log;

   procedure clear (This : in out LayerManagerLogging) is
   begin
        This.stringBuilder.delete (0, This.stringBuilder.length);
        This.logUtil.putF (This.stringBuilder.appendint (Integer (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access)))).append (This.CLEAR_Field).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.CLEAR_Field);
   end clear;

begin
   null;
   instance := LayerManagerLogging_Package.Create;
   removeFailed := False;

end org.allbinary.layer.LayerManagerLogging_Package;


