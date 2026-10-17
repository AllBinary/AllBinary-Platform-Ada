-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.thread.ThreadPoolStrings_Package is

   procedure Initialize_Fields (This : in out ThreadPoolStrings'Class) is
   begin
      null;
      This.ADD_TASK := To_Unbounded_String ("addTask");
      This.START_TASK := To_Unbounded_String ("Started Task: ");
      This.COMPLETE_TASK := To_Unbounded_String ("Completed Task: ");
   end Initialize_Fields;

   procedure Initialize (This : in out ThreadPoolStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ThreadPoolStrings_Access is
      This : constant ThreadPoolStrings_Access := new ThreadPoolStrings;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ThreadPoolStrings_Access is
   begin
        return ThreadPoolStrings_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant ThreadPoolStrings_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := ThreadPoolStrings_Package.Create;

end org.allbinary.thread.ThreadPoolStrings_Package;


