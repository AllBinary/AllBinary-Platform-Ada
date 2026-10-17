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


package body org.allbinary.business.entry_Id.EntryData_Package is

   procedure Initialize_Fields (This : in out EntryData'Class) is
   begin
      null;
      This.ID := To_Unbounded_String ("ENTRY_ID");
      This.ENCRYPTION := To_Unbounded_String ("ENTRY_ENCRYPTION");
      This.TIMECREATED := To_Unbounded_String ("ENTRY_TIMECREATED");
      This.LASTMODIFIED := To_Unbounded_String ("ENTRY_LASTMODIFIED");
      This.DEFAULT := To_Unbounded_String ("ENTRY_DEFAULT");
      This.SPECIAL := To_Unbounded_String ("ENTRY_SPECIAL");
      This.ENABLE := To_Unbounded_String ("ENTRY_ENABLE");
      This.YES := To_Unbounded_String ("Yes");
      This.NO := To_Unbounded_String ("No");
   end Initialize_Fields;


   function getInstance return EntryData_Access is
   begin
        return EntryData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out EntryData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return EntryData_Access is
      This : constant EntryData_Access := new EntryData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant EntryData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := EntryData_Package.Create;

end org.allbinary.business.entry_Id.EntryData_Package;


