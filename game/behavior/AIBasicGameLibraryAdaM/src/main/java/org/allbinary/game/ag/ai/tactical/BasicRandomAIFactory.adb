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


package body org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory_Package is

   procedure Initialize_Fields (This : in out BasicRandomAIFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicRandomAIFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicRandomAIFactory_Access is
      This : constant BasicRandomAIFactory_Access := new BasicRandomAIFactory;
   begin
      BasicRandomAIFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out BasicRandomAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return ArtificialIntelligenceInterface_Access is
      visitor : Visitor_Access;
      inputProbability : InputProbability_Access;
   begin
        visitor := Visitor_Access (hashtable.get (Java_Object_Access (BasicAI_Package.AI_VISITOR)));
        if (visitor) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Visitor Provided")));
        end if;
        inputProbability := InputProbability_Access (hashtable.get (Java_Object_Access (InputProbability_Package.INPUT_PROBABILITY)));
        return BasicRandomAI_Package.Create (ownerLayerInterface, gameInput, inputProbability, visitor);
   end getInstance;

   procedure getInstance (This : in out BasicRandomAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := BasicRandomAIFactory'Class (This).getInstance (hashtable, ownerLayerInterface, gameInput);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory_Package;


