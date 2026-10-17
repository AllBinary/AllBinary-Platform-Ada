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


package body org.allbinary.game.input.SelectAdvancedRTSLayerVisitorFactory_Package is

   procedure Initialize_Fields (This : in out SelectAdvancedRTSLayerVisitorFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return SelectAdvancedRTSLayerVisitorFactory_Access is
   begin
        return SelectAdvancedRTSLayerVisitorFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out SelectAdvancedRTSLayerVisitorFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SelectAdvancedRTSLayerVisitorFactory_Access is
      This : constant SelectAdvancedRTSLayerVisitorFactory_Access := new SelectAdvancedRTSLayerVisitorFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function create (This : in out SelectAdvancedRTSLayerVisitorFactory; selectedRTSLayersPlayerGameInput : SelectedRTSLayersPlayerGameInput_Access) return Visitor_Access is
   begin
        return SelectAdvancedRTSLayerVisitor_Package.Create (selectedRTSLayersPlayerGameInput);
   end create;

   procedure getInstance is
      Java_Result : constant SelectAdvancedRTSLayerVisitorFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure create (This : in out SelectAdvancedRTSLayerVisitorFactory; selectedRTSLayersPlayerGameInput : SelectedRTSLayersPlayerGameInput_Access) is
      Java_Result : constant Visitor_Access := SelectAdvancedRTSLayerVisitorFactory'Class (This).create (selectedRTSLayersPlayerGameInput);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

begin
   null;
   instance := SelectAdvancedRTSLayerVisitorFactory_Package.Create;

end org.allbinary.game.input.SelectAdvancedRTSLayerVisitorFactory_Package;


