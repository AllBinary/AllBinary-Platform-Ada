--  Generated Code Do Not Modify


with java.util.Calendar_Package; use java.util.Calendar_Package;

package body org.allbinary.time.TimeTypeUtil_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   procedure Initialize_Fields (This : in out TimeTypeUtil'Class) is
   begin
      null;
      This.NIGHT := To_Unbounded_String ("Night");
      This.DAY := To_Unbounded_String ("Day");
   end Initialize_Fields;

   procedure Initialize (This : in out TimeTypeUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TimeTypeUtil_Access is
      This : constant TimeTypeUtil_Access := new TimeTypeUtil;
   begin
      TimeTypeUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return TimeTypeUtil_Access is
   begin
        return TimeTypeUtil_Package.instance;
   end getInstance;

   function isNight (This : in out TimeTypeUtil) return Boolean is
      hoursOfDay : Integer;
   begin
        hoursOfDay := TimeTypeUtil'Class (This).getHourOfDay;
        return ((hoursOfDay) < (6)) or else ((hoursOfDay) > (18));
   end isNight;

   function getHourOfDay (This : in out TimeTypeUtil) return Integer is
      calendar : Calendar_Access;
   begin
        calendar := Calendar_Package.getInstance;
        return calendar.get (Calendar_Package.HOUR_OF_DAY);
   end getHourOfDay;

   function getNightOrDay (This : in out TimeTypeUtil) return Unbounded_String is
   begin
        return (if TimeTypeUtil'Class (This).isNight then This.NIGHT else This.DAY);
   end getNightOrDay;

   function getHourOfDay (This : in out TimeTypeUtil; timeInMillis : Long_Long_Integer) return Integer is
      calendar : Calendar_Access;
   begin
        calendar := Calendar_Package.getInstance;
        calendar.setTimeInMillis (timeInMillis);
        return calendar.get (Calendar_Package.HOUR_OF_DAY);
   end getHourOfDay;

   function isNight (This : in out TimeTypeUtil; timeInMillis : Long_Long_Integer) return Boolean is
      hoursOfDay : Integer;
   begin
        hoursOfDay := TimeTypeUtil'Class (This).getHourOfDay (timeInMillis);
        return ((hoursOfDay) < (6)) or else ((hoursOfDay) > (18));
   end isNight;

   function getNightOrDay (This : in out TimeTypeUtil; timeInMillis : Long_Long_Integer) return Unbounded_String is
   begin
        return (if TimeTypeUtil'Class (This).isNight (timeInMillis) then This.NIGHT else This.DAY);
   end getNightOrDay;

   procedure getHourOfDay (This : in out TimeTypeUtil; timeInMillis : Long_Long_Integer) is
      Java_Result : constant Integer := TimeTypeUtil'Class (This).getHourOfDay (timeInMillis);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHourOfDay;

   procedure isNight (This : in out TimeTypeUtil; timeInMillis : Long_Long_Integer) is
      Java_Result : constant Boolean := TimeTypeUtil'Class (This).isNight (timeInMillis);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isNight;

   procedure getNightOrDay (This : in out TimeTypeUtil; timeInMillis : Long_Long_Integer) is
      Java_Result : constant Unbounded_String := TimeTypeUtil'Class (This).getNightOrDay (timeInMillis);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNightOrDay;

begin
   null;
   instance := TimeTypeUtil_Package.Create;

end org.allbinary.time.TimeTypeUtil_Package;


