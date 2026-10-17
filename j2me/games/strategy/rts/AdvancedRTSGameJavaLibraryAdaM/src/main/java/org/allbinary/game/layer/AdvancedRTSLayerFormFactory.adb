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


   procedure Initialize (This : in out AdvancedRTSLayerFormFactory'Class; label : Unbounded_String; itemArrayFactoryInterface : ItemArraySingletonFactoryInterface_Access) is
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
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.CONSTRUCTOR, e);
                end;
        end;
        This.scrollSelectionForm := scrollSelectionForm;
   end Initialize;

   function Create (label : Unbounded_String; itemArrayFactoryInterface : ItemArraySingletonFactoryInterface_Access) return AdvancedRTSLayerFormFactory_Access is
      This : constant AdvancedRTSLayerFormFactory_Access := new AdvancedRTSLayerFormFactory;
   begin
      AdvancedRTSLayerFormFactory_Package.Initialize (This.all, label, itemArrayFactoryInterface);
      return This;
   end Create;

   function getInstance (This : in out AdvancedRTSLayerFormFactory; rtsLayer : RTSLayer_Access) return ScrollSelectionForm_Access is
   begin
        return This.scrollSelectionForm;
   end getInstance;

   procedure getInstance (This : in out AdvancedRTSLayerFormFactory; rtsLayer : RTSLayer_Access) is
      Java_Result : constant ScrollSelectionForm_Access := AdvancedRTSLayerFormFactory'Class (This).getInstance (rtsLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package;


