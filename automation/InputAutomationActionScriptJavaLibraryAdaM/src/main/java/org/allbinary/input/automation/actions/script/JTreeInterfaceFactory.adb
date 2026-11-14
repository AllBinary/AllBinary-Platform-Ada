-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify


with org.allbinary.input.automation.actions.script.JTreeInterface_Package; use org.allbinary.input.automation.actions.script.JTreeInterface_Package;
with org.allbinary.input.automation.actions.script.JTreeInterface_Package_References;
with org.allbinary.input.automation.actions.script.JTreeInterface_Package;

package body org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package is

   subtype JTreeInterface_Access is org.allbinary.input.automation.actions.script.JTreeInterface_Package_References.JTreeInterface_Access;
   function "=" (Left, Right : JTreeInterface_Access) return Boolean renames org.allbinary.input.automation.actions.script.JTreeInterface_Package_References."=";
   subtype JTreeInterface_Access_Array is org.allbinary.input.automation.actions.script.JTreeInterface_Package_References.JTreeInterface_Access_Array;
   function "=" (Left, Right : JTreeInterface_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.JTreeInterface_Package_References."=";
   subtype JTreeInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.JTreeInterface_Package_References.JTreeInterface_Access_Array_Access;
   function "=" (Left, Right : JTreeInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.JTreeInterface_Package_References."=";
   subtype JTreeInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.JTreeInterface_Package_References.JTreeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : JTreeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.JTreeInterface_Package_References."=";
   subtype JTreeInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.JTreeInterface_Package_References.JTreeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : JTreeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.JTreeInterface_Package_References."=";
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


