-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.role.BasicUserRole_Package; use org.allbinary.business.user.role.BasicUserRole_Package;
with org.allbinary.business.user.role.BasicUserRole_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.business.user.role.BasicUserRole_Package;
with org.allbinary.logic.math.MathUtil_Package;

package body org.allbinary.business.user.role.BasicUserRoles_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicUserRole_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access;
   function "=" (Left, Right : BasicUserRole_Access) return Boolean renames org.allbinary.business.user.role.BasicUserRole_Package_References."=";
   subtype BasicUserRole_Access_Array is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array;
   function "=" (Left, Right : BasicUserRole_Access_Array) return Boolean renames org.allbinary.business.user.role.BasicUserRole_Package_References."=";
   subtype BasicUserRole_Access_Array_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access;
   function "=" (Left, Right : BasicUserRole_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.BasicUserRole_Package_References."=";
   subtype BasicUserRole_Access_Array_Access_Array is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access_Array;
   function "=" (Left, Right : BasicUserRole_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.role.BasicUserRole_Package_References."=";
   subtype BasicUserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicUserRole_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.BasicUserRole_Package_References."=";
   procedure Initialize_Fields (This : in out BasicUserRoles'Class) is
   begin
      null;
      This.roleVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out BasicUserRoles'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicUserRoles_Access is
      This : constant BasicUserRoles_Access := new BasicUserRoles;
   begin
      BasicUserRoles_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BasicUserRoles_Access is
   begin
        return BasicUserRoles_Access (BasicUserRoles_Package.instance);
   end getInstance;

   --  throws Exception
   function getRole (This : in out BasicUserRoles; role : Unbounded_String) return BasicUserRole_Access is
      roleVector : BasicArrayList_Access;
      size : Integer;
      userRole : BasicUserRole_Access;
      index : Integer;
   begin
        roleVector := BasicUserRoles'Class (This).getAll;
        size := roleVector.size;
        for index in 0 .. (size) - 1 loop
            userRole := BasicUserRole_Access (roleVector.get (index));
            if (Java_Compare_To (role, userRole.toString)) = (0) then
                return userRole;
            end if;
        end loop;
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unable to get role - Unknown Role")));
   end getRole;

   function getAll (This : in out BasicUserRoles) return BasicArrayList_Access is
   begin
        return This.roleVector;
   end getAll;

   procedure getRole (This : in out BasicUserRoles; role : Unbounded_String) is
      Java_Result : constant BasicUserRole_Access := BasicUserRoles'Class (This).getRole (role => role);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRole;

begin
   null;
   instance := BasicUserRoles_Package.Create;

end org.allbinary.business.user.role.BasicUserRoles_Package;


