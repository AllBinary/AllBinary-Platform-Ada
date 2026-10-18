-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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



package body org.allbinary.ai.ArtificialIntelligenceFactory_Package is

   procedure Initialize_Fields (This : in out ArtificialIntelligenceFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ArtificialIntelligenceFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ArtificialIntelligenceFactory_Access is
      This : constant ArtificialIntelligenceFactory_Access := new ArtificialIntelligenceFactory;
   begin
      ArtificialIntelligenceFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out ArtificialIntelligenceFactory; anyType_Param : access Java_Object'Class) return ArtificialIntelligence_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getInstance;

   procedure getInstance (This : in out ArtificialIntelligenceFactory; anyType_Param : access Java_Object'Class) is
      Java_Result : constant ArtificialIntelligence_Access := ArtificialIntelligenceFactory'Class (This).getInstance (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   function getInstance (This : in out ArtificialIntelligenceFactory; Value : Unbounded_String) return ArtificialIntelligence_Access is
   begin
      return ArtificialIntelligenceFactory'Class (This).getInstance (Java_Box (Value));
   end getInstance;

   procedure getInstance (This : in out ArtificialIntelligenceFactory; Value : Unbounded_String) is
      Java_Result : constant ArtificialIntelligence_Access := ArtificialIntelligenceFactory'Class (This).getInstance (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.ai.ArtificialIntelligenceFactory_Package;


