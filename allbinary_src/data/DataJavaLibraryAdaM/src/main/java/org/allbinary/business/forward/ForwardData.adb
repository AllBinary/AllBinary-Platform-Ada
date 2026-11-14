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



package body org.allbinary.business.forward.ForwardData_Package is

   procedure Initialize_Fields (This : in out ForwardData'Class) is
   begin
      null;
      This.PAGE := To_Unbounded_String ("FORWARD_PAGE");
      This.NAME := To_Unbounded_String ("FORWARD_NAME");
      This.VALUE := To_Unbounded_String ("FORWARD_VALUE");
   end Initialize_Fields;


   procedure Initialize (This : in out ForwardData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ForwardData_Access is
      This : constant ForwardData_Access := new ForwardData;
   begin
      ForwardData_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return ForwardData_Access is
   begin
        return ForwardData_Package.instance;
   end getInstance;

begin
   null;
   instance := ForwardData_Package.Create;

end org.allbinary.business.forward.ForwardData_Package;


