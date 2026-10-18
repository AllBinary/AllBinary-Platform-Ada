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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.data.tables.user.UserEntityFactory_Package; use org.allbinary.data.tables.user.UserEntityFactory_Package;
with org.allbinary.data.tables.user.UserEntityInterface_Package; use org.allbinary.data.tables.user.UserEntityInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package; use org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package;

package body org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package UserEntityFactory_Package renames Standard.org.allbinary.data.tables.user.UserEntityFactory_Package;
   package UserEntityInterface_Package renames Standard.org.allbinary.data.tables.user.UserEntityInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out StoreFrontUsersStatistics'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontUsersStatistics'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      userEntityInterface : UserEntityInterface_Access;
      userVector : BasicArrayList_Access;
      size : Integer;
      userInterface : UserInterface_Access;
      nextUserRole : UserRole_Access;
      currentNumberOfUsersForRole : Long_Long_Integer;
      index : Integer;
   begin
      Initialize_Fields (This);
        This.totalUsersByRoleHashMap := StdUtil_Package.getInstance.createHashMap;
        userEntityInterface := UserEntityFactory_Package.getInstance;
        userVector := userEntityInterface.getCustomers;
        This.totalNumberOfUsers := userVector.size;
        size := userVector.size;
        for index in 0 .. (size) - 1 loop
            userInterface := UserInterface_Access (userVector.get (index));
            nextUserRole := userInterface.getRole;
            currentNumberOfUsersForRole := StoreFrontUsersStatistics'Class (This).getNewTotal (nextUserRole);
            This.totalUsersByRoleHashMap.put (nextUserRole, currentNumberOfUsersForRole);
        end loop;
   end Initialize;

   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return StoreFrontUsersStatistics_Access is
      This : constant StoreFrontUsersStatistics_Access := new StoreFrontUsersStatistics;
   begin
      StoreFrontUsersStatistics_Package.Initialize (This.all, storeFrontInterface_Param);
      return This;
   end Create;

   function getNewTotal (This : in out StoreFrontUsersStatistics; userRole_Param : access UserRole_Package.UserRole'Class) return Long_Long_Integer is
      userRole : constant UserRole_Access := UserRole_Access (userRole_Param);
      numberOfUsersForRoleLong : Long_Long_Integer;
   begin
        numberOfUsersForRoleLong := Long_Long_Integer (This.totalUsersByRoleHashMap.get (userRole));
        if (numberOfUsersForRoleLong) = (0) then
            numberOfUsersForRoleLong := 0;
        end if;
        return (Long_Long_Integer (numberOfUsersForRoleLong)) + (1);
   end getNewTotal;

   function getNumberOfUsers (This : in out StoreFrontUsersStatistics) return Long_Long_Integer is
   begin
        return This.totalNumberOfUsers;
   end getNumberOfUsers;

   function getNumberOfUsersByRole (This : in out StoreFrontUsersStatistics; role : Unbounded_String) return Long_Long_Integer is
      totalForRole : Long_Long_Integer;
   begin
        totalForRole := Long_Long_Integer (This.totalUsersByRoleHashMap.get (Java_Box (role)));
        return totalForRole;
   end getNumberOfUsersByRole;

   function toHashMap (This : in out StoreFrontUsersStatistics) return HashMap_Access is
      hashMap : HashMap_Access;
      setOfUserRoles : Set_Access;
      nextUserRole : UserRole_Access;
      userRoleArray : Java_Object_Access_Array_Access;
      size : Integer;
      totalForRole : Long_Long_Integer;
      index : Integer;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (StoreFrontUsersStatisticsData_Package.getInstance.NUMBEROFUSERS, Java_Box (StoreFrontUsersStatistics'Class (This).getNumberOfUsers.toString));
        setOfUserRoles := This.totalUsersByRoleHashMap.keySet;
        nextUserRole := null;
        userRoleArray := setOfUserRoles.toArray;
        size := userRoleArray'Length;
        for index in 0 .. (size) - 1 loop
            nextUserRole := UserRole_Access (userRoleArray (index));
            totalForRole := Long_Long_Integer (This.totalUsersByRoleHashMap.get (nextUserRole));
            hashMap.put (Java_Box (nextUserRole.toString), Java_Box (To_Unbounded_String (Java_Image (totalForRole))));
        end loop;
        return hashMap;
   end toHashMap;

   function toVector (This : in out StoreFrontUsersStatistics) return BasicArrayList_Access is
   begin
        return null;
   end toVector;

   function getKey (This : in out StoreFrontUsersStatistics) return Java_Object_Access is
   begin
        return null;
   end getKey;

   procedure getNewTotal (This : in out StoreFrontUsersStatistics; userRole_Param : access UserRole_Package.UserRole'Class) is
      Java_Result : constant Long_Long_Integer := StoreFrontUsersStatistics'Class (This).getNewTotal (userRole_Param => userRole_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNewTotal;

   procedure getNumberOfUsersByRole (This : in out StoreFrontUsersStatistics; role : Unbounded_String) is
      Java_Result : constant Long_Long_Integer := StoreFrontUsersStatistics'Class (This).getNumberOfUsersByRole (role => role);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNumberOfUsersByRole;

end org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package;


