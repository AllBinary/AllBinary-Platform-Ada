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


package body org.allbinary.game.configuration.persistance.PersistanceStrings_Package is

   procedure Initialize_Fields (This : in out PersistanceStrings'Class) is
   begin
      null;
      This.SAVING := To_Unbounded_String ("Saving: ");
      This.NUMBER_OF_RECORDS := To_Unbounded_String ("Number of records: ");
      This.LOADING_ID := To_Unbounded_String ("Loading data with id: ");
      This.LOAD_ALL := To_Unbounded_String ("loadAll");
      This.DELETING_WITH_ID := To_Unbounded_String ("Deleting data with id: ");
      This.CLOSING_RECORDSTORE := To_Unbounded_String ("Closing RecordStore");
      This.NOT_SAVING := To_Unbounded_String ("Not Saving: ");
      This.ERROR_LOADING := To_Unbounded_String ("Error Loading gameActionInput: ");
      This.ERROR_LOADING_ID := To_Unbounded_String ("Error Loading id: ");
      This.ID := To_Unbounded_String (" id: ");
      This.GAME_ACTION_INPUT := To_Unbounded_String (" GameActionInput: ");
   end Initialize_Fields;

   procedure Initialize (This : in out PersistanceStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PersistanceStrings_Access is
      This : constant PersistanceStrings_Access := new PersistanceStrings;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return PersistanceStrings_Access is
   begin
        return PersistanceStrings_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant PersistanceStrings_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := PersistanceStrings_Package.Create;

end org.allbinary.game.configuration.persistance.PersistanceStrings_Package;


