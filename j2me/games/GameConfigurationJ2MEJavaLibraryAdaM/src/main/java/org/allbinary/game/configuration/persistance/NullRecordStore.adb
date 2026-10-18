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



package body org.allbinary.game.configuration.persistance.NullRecordStore_Package is

   procedure Initialize_Fields (This : in out NullRecordStore'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullRecordStore'Class) is
   begin
      RecordStore_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NullRecordStore_Access is
      This : constant NullRecordStore_Access := new NullRecordStore;
   begin
      NullRecordStore_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   NULL_RECORD_STORE := NullRecordStore_Package.Create;

end org.allbinary.game.configuration.persistance.NullRecordStore_Package;


