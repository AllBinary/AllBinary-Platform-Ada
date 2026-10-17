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


package body org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package is

   procedure Initialize_Fields (This : in out StoreFrontUsersStatistics'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontUsersStatistics'Class; storeFrontInterface_Param : access StoreFrontInterface'Class) is
      storeFrontInterface : StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
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
            currentNumberOfUsersForRole := This.getNewTotal (nextUserRole);
            This.totalUsersByRoleHashMap.put (nextUserRole, currentNumberOfUsersForRole);
        end loop;
   end Initialize;

   function Create (storeFrontInterface_Param : access StoreFrontInterface'Class) return StoreFrontUsersStatistics_Access is
      This : constant StoreFrontUsersStatistics_Access := new StoreFrontUsersStatistics;
   begin
      StoreFrontUsersStatistics_Package.Initialize (This.all, storeFrontInterface_Param);
      return This;
   end Create;

   function getNewTotal (This : in out StoreFrontUsersStatistics; userRole_Param : access UserRole'Class) return Long_Long_Integer is
      userRole : UserRole_Access := UserRole_Access (userRole_Param);
      numberOfUsersForRoleLong : Long_Long_Integer;
   begin
        numberOfUsersForRoleLong := Long_Long_Integer (This.totalUsersByRoleHashMap.get (userRole));
        if (numberOfUsersForRoleLong) = (null) then
            numberOfUsersForRoleLong := 0;
        end if;
        return (numberOfUsersForRoleLong.longValue) + (1);
   end getNewTotal;

   function getNumberOfUsers (This : in out StoreFrontUsersStatistics) return Long_Long_Integer is
   begin
        return This.totalNumberOfUsers;
   end getNumberOfUsers;

   function getNumberOfUsersByRole (This : in out StoreFrontUsersStatistics; role : Unbounded_String) return Long_Long_Integer is
      totalForRole : Long_Long_Integer;
   begin
        totalForRole := Long_Long_Integer (This.totalUsersByRoleHashMap.get (role));
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
        hashMap.put (StoreFrontUsersStatisticsData_Package.getInstance.NUMBEROFUSERS, This.getNumberOfUsers.toString);
        setOfUserRoles := This.totalUsersByRoleHashMap.keySet;
        nextUserRole := null;
        userRoleArray := setOfUserRoles.toArray;
        size := userRoleArray'Length;
        for index in 0 .. (size) - 1 loop
            nextUserRole := UserRole_Access (userRoleArray (index));
            totalForRole := Long_Long_Integer (This.totalUsersByRoleHashMap.get (nextUserRole));
            hashMap.put (nextUserRole.toString, totalForRole.toString);
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

   procedure getNewTotal (This : in out StoreFrontUsersStatistics; userRole_Param : access UserRole'Class) is
      Java_Result : constant Long_Long_Integer := StoreFrontUsersStatistics'Class (This).getNewTotal (userRole_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNewTotal;

   procedure getNumberOfUsersByRole (This : in out StoreFrontUsersStatistics; role : Unbounded_String) is
      Java_Result : constant Long_Long_Integer := StoreFrontUsersStatistics'Class (This).getNumberOfUsersByRole (role);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNumberOfUsersByRole;

end org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package;


