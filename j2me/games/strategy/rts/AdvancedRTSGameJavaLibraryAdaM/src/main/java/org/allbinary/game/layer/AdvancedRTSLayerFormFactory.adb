-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


package body org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package is

   procedure Initialize_Fields (This : in out AdvancedRTSLayerFormFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdvancedRTSLayerFormFactory'Class; label : Unbounded_String; itemArrayFactoryInterface_Param : access ItemArraySingletonFactoryInterface_Package.ItemArraySingletonFactoryInterface'Class) is
      itemArrayFactoryInterface : constant ItemArraySingletonFactoryInterface_Access := ItemArraySingletonFactoryInterface_Access (itemArrayFactoryInterface_Param);
      scrollSelectionForm : ScrollSelectionForm_Access;
      items : ABCustomItem_Access_Array_Access;
      commonStrings : CommonStrings_Access;
   begin
      RTSLayerFormFactory_Package.Initialize (This);
      Initialize_Fields (This);
        scrollSelectionForm := ScrollSelectionForm_Package.getNullScrollSelectionForm;
        begin
            items := itemArrayFactoryInterface.getItems;
            scrollSelectionForm := RTSScrollSelectionFormFactory_Package.getInstance (label, items);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, AdvancedRTSLayerFormFactory_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR, e);
                end;
        end;
        This.scrollSelectionForm := scrollSelectionForm;
   end Initialize;

   function Create (label : Unbounded_String; itemArrayFactoryInterface_Param : access ItemArraySingletonFactoryInterface_Package.ItemArraySingletonFactoryInterface'Class) return AdvancedRTSLayerFormFactory_Access is
      This : constant AdvancedRTSLayerFormFactory_Access := new AdvancedRTSLayerFormFactory;
   begin
      AdvancedRTSLayerFormFactory_Package.Initialize (This.all, label, itemArrayFactoryInterface_Param);
      return This;
   end Create;

   function getInstance (This : in out AdvancedRTSLayerFormFactory; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) return ScrollSelectionForm_Access is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        return This.scrollSelectionForm;
   end getInstance;

   procedure getInstance (This : in out AdvancedRTSLayerFormFactory; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      Java_Result : constant ScrollSelectionForm_Access := AdvancedRTSLayerFormFactory'Class (This).getInstance (rtsLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package;


