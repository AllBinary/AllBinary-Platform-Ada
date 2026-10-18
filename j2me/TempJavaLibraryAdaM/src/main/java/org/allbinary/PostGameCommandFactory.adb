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


package body org.allbinary.PostGameCommandFactory_Package is

   procedure Initialize_Fields (This : in out PostGameCommandFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PostGameCommandFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PostGameCommandFactory_Access is
      This : constant PostGameCommandFactory_Access := new PostGameCommandFactory;
   begin
      PostGameCommandFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PostGameCommandFactory_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getInstance;

   procedure addCommands (This : in out PostGameCommandFactory; canvas_Param : access Canvas_Package.Canvas'Class) is
      canvas : constant Canvas_Access := Canvas_Access (canvas_Param);
   begin
        null;
   end addCommands;

begin
   null;
   instance := PostGameCommandFactory_Package.Create;

end org.allbinary.PostGameCommandFactory_Package;


