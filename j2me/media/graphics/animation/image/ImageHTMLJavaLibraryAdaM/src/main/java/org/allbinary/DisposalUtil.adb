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


with org.eclipse.swt.graphics.Resource_Package; use org.eclipse.swt.graphics.Resource_Package;
with org.eclipse.swt.graphics.Resource_Package;

package body org.allbinary.DisposalUtil_Package is

   subtype Resource_Access is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access;
   function "=" (Left, Right : Resource_Access) return Boolean renames org.eclipse.swt.graphics.Resource_Package_References."=";
   subtype Resource_Access_Array is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array;
   function "=" (Left, Right : Resource_Access_Array) return Boolean renames org.eclipse.swt.graphics.Resource_Package_References."=";
   subtype Resource_Access_Array_Access is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array_Access;
   function "=" (Left, Right : Resource_Access_Array_Access) return Boolean renames org.eclipse.swt.graphics.Resource_Package_References."=";
   subtype Resource_Access_Array_Access_Array is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array_Access_Array;
   function "=" (Left, Right : Resource_Access_Array_Access_Array) return Boolean renames org.eclipse.swt.graphics.Resource_Package_References."=";
   subtype Resource_Access_Array_Access_Array_Access is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Resource_Access_Array_Access_Array_Access) return Boolean renames org.eclipse.swt.graphics.Resource_Package_References."=";
   procedure Initialize_Fields (This : in out DisposalUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DisposalUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DisposalUtil_Access is
      This : constant DisposalUtil_Access := new DisposalUtil;
   begin
      DisposalUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DisposalUtil_Access is
   begin
        return DisposalUtil_Access (DisposalUtil_Package.instance);
   end getInstance;

   procedure dispose (This : in out DisposalUtil; resource_Param : access Resource_Package.Resource'Class) is
      resource : constant Resource_Access := Resource_Access (resource_Param);
   begin
        if not (resource.isDisposed) then
            resource.dispose;
        end if;
   end dispose;

begin
   null;
   instance := DisposalUtil_Package.Create;

end org.allbinary.DisposalUtil_Package;


