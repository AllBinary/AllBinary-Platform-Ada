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


package body org.allbinary.ai.ArtificialIntelligence_Package is

   procedure Initialize_Fields (This : in out ArtificialIntelligence'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ArtificialIntelligence_Access is
   begin
        return ArtificialIntelligence_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ArtificialIntelligence'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ArtificialIntelligence_Access is
      This : constant ArtificialIntelligence_Access := new ArtificialIntelligence;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out ArtificialIntelligence; layerManager : AllBinaryLayerManager_Access) is
   begin
        null;
   end processAI;

   function getId (This : in out ArtificialIntelligence) return Integer is
   begin
        return 1;
   end getId;

   procedure getInstance is
      Java_Result : constant ArtificialIntelligence_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getId (This : in out ArtificialIntelligence) is
      Java_Result : constant Integer := ArtificialIntelligence'Class (This).getId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getId;

begin
   null;
   AI_ID := 2;
   instance := ArtificialIntelligence_Package.Create;

end org.allbinary.ai.ArtificialIntelligence_Package;


