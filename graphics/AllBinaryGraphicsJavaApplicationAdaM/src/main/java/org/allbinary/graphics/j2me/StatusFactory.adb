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


package body org.allbinary.graphics.j2me.StatusFactory_Package is

   procedure Initialize_Fields (This : in out StatusFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.SETSTATUS := To_Unbounded_String ("setStatus");
      This.STATUS_LABEL := To_Unbounded_String ("Status: ");
   end Initialize_Fields;

   procedure Initialize (This : in out StatusFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return StatusFactory_Access is
      This : constant StatusFactory_Access := new StatusFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return StatusFactory_Access is
   begin
        return StatusFactory_Package.instance;
   end getInstance;

   procedure setStatusNoLog (This : in out StatusFactory; status : Unbounded_String) is
   begin
        MyFrame_Package.statusJLabel.setText (status);
   end setStatusNoLog;

   procedure setStatus_Case (This : in out StatusFactory; status : Unbounded_String) is
   begin
        This.setStatusNoLog (status);
        This.logUtil.putF (This.STATUS_LABEL & status, This'Unchecked_Access, This.SETSTATUS);
   end setStatus_Case;

   procedure getInstance is
      Java_Result : constant StatusFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := StatusFactory_Package.Create;

end org.allbinary.graphics.j2me.StatusFactory_Package;


