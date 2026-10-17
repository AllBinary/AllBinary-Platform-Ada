-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


package body org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package is

   procedure Initialize_Fields (This : in out SelectRTSLayerVisitorFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return SelectRTSLayerVisitorFactory_Access is
   begin
        return SelectRTSLayerVisitorFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out SelectRTSLayerVisitorFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SelectRTSLayerVisitorFactory_Access is
      This : constant SelectRTSLayerVisitorFactory_Access := new SelectRTSLayerVisitorFactory;
   begin
      SelectRTSLayerVisitorFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function create (This : in out SelectRTSLayerVisitorFactory; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class) return Visitor_Access is
      selectedRTSLayersPlayerGameInput : constant SelectedRTSLayersPlayerGameInput_Access := SelectedRTSLayersPlayerGameInput_Access (selectedRTSLayersPlayerGameInput_Param);
   begin
        return SelectRTSLayerVisitor_Package.Create;
   end create;

   procedure create (This : in out SelectRTSLayerVisitorFactory; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class) is
      Java_Result : constant Visitor_Access := SelectRTSLayerVisitorFactory'Class (This).create (selectedRTSLayersPlayerGameInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

begin
   null;
   instance := SelectRTSLayerVisitorFactory_Package.Create;

end org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package;


