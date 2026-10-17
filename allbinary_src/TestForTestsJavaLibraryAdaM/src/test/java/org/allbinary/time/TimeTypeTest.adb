--  Generated Code Do Not Modify


package body org.allbinary.time.TimeTypeTest_Package is

   procedure Initialize_Fields (This : in out TimeTypeTest'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TimeTypeTest'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TimeTypeTest_Access is
      This : constant TimeTypeTest_Access := new TimeTypeTest;
   begin
      TimeTypeTest_Package.Initialize (This.all);
      return This;
   end Create;


   function millisForHourLocal (hour : Integer) return Long_Long_Integer is
      cal : Calendar_Access;
   begin
        cal := Calendar_Package.getInstance;
        cal.set (Calendar_Package.HOUR_OF_DAY, hour);
        cal.set (Calendar_Package.MINUTE, 0);
        cal.set (Calendar_Package.SECOND, 0);
        cal.set (Calendar_Package.MILLISECOND, 0);
        return cal.getTimeInMillis;
   end millisForHourLocal;

   procedure isNight_returnsTrue_for_hours_less_than_6 (This : in out TimeTypeTest) is
      util : TimeTypeUtil_Access;
      h : Integer;
   begin
        --  Otherwise - statement - ForEachStmt

   end isNight_returnsTrue_for_hours_less_than_6;

   procedure isNight_returnsTrue_for_hours_greater_than_18 (This : in out TimeTypeTest) is
      util : TimeTypeUtil_Access;
      h : Integer;
   begin
        --  Otherwise - statement - ForEachStmt

   end isNight_returnsTrue_for_hours_greater_than_18;

   procedure isNight_returnsFalse_for_boundary_hours_6_and_18 (This : in out TimeTypeTest) is
      util : TimeTypeUtil_Access;
      h : Integer;
   begin
        --  Otherwise - statement - ForEachStmt

   end isNight_returnsFalse_for_boundary_hours_6_and_18;

   procedure getNightOrDay_returns_expected_label (This : in out TimeTypeTest) is
      nightUtil : TimeTypeUtil_Access;
      dayUtil : TimeTypeUtil_Access;
   begin
        nightUtil := TestableTimeTypeUtil_Package.Create (0);
        Assertions_Package.assertEquals (nightUtil.NIGHT, nightUtil.getNightOrDay);
        dayUtil := TestableTimeTypeUtil_Package.Create (12);
        Assertions_Package.assertEquals (dayUtil.DAY, dayUtil.getNightOrDay);
   end getNightOrDay_returns_expected_label;

   procedure getHourOfDay_long_converts_epoch_to_local_hour (This : in out TimeTypeTest) is
      util : TimeTypeUtil_Access;
      millis : Long_Long_Integer;
      h : Integer;
   begin
        util := TimeTypeUtil_Package.Create;
        --  Otherwise - statement - ForEachStmt

   end getHourOfDay_long_converts_epoch_to_local_hour;

   procedure isNight_long_expected_ranges (This : in out TimeTypeTest) is
      util : TimeTypeUtil_Access;
      millis : Long_Long_Integer;
      h : Integer;
   begin
        util := TimeTypeUtil_Package.Create;
        --  Otherwise - statement - ForEachStmt

        --  Otherwise - statement - ForEachStmt

   end isNight_long_expected_ranges;

   procedure getNightOrDay_long_consistency (This : in out TimeTypeTest) is
      util : TimeTypeUtil_Access;
      nightMillis : Long_Long_Integer;
      dayMillis : Long_Long_Integer;
   begin
        util := TimeTypeUtil_Package.Create;
        nightMillis := TimeTypeTest_Package.millisForHourLocal (0);
        dayMillis := TimeTypeTest_Package.millisForHourLocal (12);
        Assertions_Package.assertEquals (util.NIGHT, util.getNightOrDay (nightMillis));
        Assertions_Package.assertEquals (util.DAY, util.getNightOrDay (dayMillis));
   end getNightOrDay_long_consistency;

   procedure boundaries_day_for_long_based_api (This : in out TimeTypeTest) is
      util : TimeTypeUtil_Access;
      millis : Long_Long_Integer;
      h : Integer;
   begin
        util := TimeTypeUtil_Package.Create;
        --  Otherwise - statement - ForEachStmt

   end boundaries_day_for_long_based_api;

   procedure constants_accessible_and_stable (This : in out TimeTypeTest) is
      util : TimeTypeUtil_Access;
   begin
        util := TimeTypeUtil_Package.Create;
        Assertions_Package.assertEquals (To_Unbounded_String ("Night"), util.NIGHT);
        Assertions_Package.assertEquals (To_Unbounded_String ("Day"), util.DAY);
   end constants_accessible_and_stable;

   procedure getInstance_returns_same_singleton (This : in out TimeTypeTest) is
      a : TimeTypeUtil_Access;
      b : TimeTypeUtil_Access;
   begin
        a := TimeTypeUtil_Package.getInstance;
        b := TimeTypeUtil_Package.getInstance;
        Assertions_Package.assertSame (a, b);
   end getInstance_returns_same_singleton;

   procedure millisForHourLocal (hour : Integer) is
      Java_Result : constant Long_Long_Integer := millisForHourLocal (hour);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end millisForHourLocal;

end org.allbinary.time.TimeTypeTest_Package;


package body org.allbinary.time.TestableTimeTypeUtil_Package is

   procedure Initialize_Fields (This : in out TestableTimeTypeUtil'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out TestableTimeTypeUtil'Class; hour : Integer) is
   begin
      TimeTypeUtil_Package.Initialize (This);
      Initialize_Fields (This);
            This.hour := hour;
   end Initialize;

   function Create (hour : Integer) return TestableTimeTypeUtil_Access is
      This : constant TestableTimeTypeUtil_Access := new TestableTimeTypeUtil;
   begin
      TestableTimeTypeUtil_Package.Initialize (This.all, hour);
      return This;
   end Create;
    
   function getHourOfDay (This : in out TestableTimeTypeUtil) return Integer is
   begin
            return This.hour;
   end getHourOfDay;

end org.allbinary.time.TestableTimeTypeUtil_Package;


