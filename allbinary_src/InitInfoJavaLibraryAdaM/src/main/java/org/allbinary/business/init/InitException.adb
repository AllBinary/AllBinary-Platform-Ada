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


package body org.allbinary.business.init.InitException_Package is

   procedure Initialize_Fields (This : in out InitException'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InitException'Class) is
   begin
      Exception_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InitException_Access is
      This : constant InitException_Access := new InitException;
   begin
      InitException_Package.Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out InitException'Class; msg : Unbounded_String) is
   begin
        Exception_Package.Initialize (This, msg);
   end Initialize;

   function Create (msg : Unbounded_String) return InitException_Access is
      This : constant InitException_Access := new InitException;
   begin
      InitException_Package.Initialize (This.all, msg);
      return This;
   end Create;

end org.allbinary.business.init.InitException_Package;


