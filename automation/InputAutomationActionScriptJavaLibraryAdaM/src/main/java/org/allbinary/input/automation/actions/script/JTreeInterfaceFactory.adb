-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify


package body org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out JTreeInterfaceFactory'Class) is
   begin
      null;
      This.jTreeInterface := null;
   end Initialize_Fields;

   procedure Initialize (This : in out JTreeInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return JTreeInterfaceFactory_Access is
      This : constant JTreeInterfaceFactory_Access := new JTreeInterfaceFactory;
   begin
      JTreeInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return JTreeInterfaceFactory_Access is
   begin
        return JTreeInterfaceFactory_Package.instance;
   end getInstance;

   procedure set (This : in out JTreeInterfaceFactory; jTreeInterface_Param : access JTreeInterface_Package.JTreeInterface'Class) is
      jTreeInterface : constant JTreeInterface_Access := JTreeInterface_Access (jTreeInterface_Param);
   begin
        This.jTreeInterface := jTreeInterface;
   end set;

   function getJTreeInterface (This : in out JTreeInterfaceFactory) return JTreeInterface_Access is
   begin
        return This.jTreeInterface;
   end getJTreeInterface;

begin
   null;
   instance := JTreeInterfaceFactory_Package.Create;

end org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package;


