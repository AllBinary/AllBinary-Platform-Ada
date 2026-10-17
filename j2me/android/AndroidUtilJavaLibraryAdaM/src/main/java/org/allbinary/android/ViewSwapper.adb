--  Generated Code Do Not Modify


package body org.allbinary.android.ViewSwapper_Package is

   procedure Initialize_Fields (This : in out ViewSwapper'Class) is
   begin
      null;
      
      
      This.currentMainViewId := -(1);
      This.mainViewArray := ViewSwapper_Package.NULL_VIEW_ARRAY;
      This.topViewArray := ViewSwapper_Package.NULL_VIEW_ARRAY;
   end Initialize_Fields;


   procedure Initialize (This : in out ViewSwapper'Class; activity_Param : access Activity'Class; rootViewId : Integer) is
      activity : Activity_Access := Activity_Access (activity_Param);
   begin
      Initialize_Fields (This);
        This.activity := activity;
        This.rootViewId := rootViewId;
   end Initialize;

   function Create (activity_Param : access Activity'Class; rootViewId : Integer) return ViewSwapper_Access is
      This : constant ViewSwapper_Access := new ViewSwapper;
   begin
      ViewSwapper_Package.Initialize (This.all, activity_Param, rootViewId);
      return This;
   end Create;

   procedure setMainViews (This : in out ViewSwapper; viewArray : View_Access_Array_Access) is
   begin
        This.mainViewArray := viewArray;
   end setMainViews;

   procedure setTopViewArray (This : in out ViewSwapper; topViewArray : View_Access_Array_Access) is
   begin
        This.topViewArray := topViewArray;
   end setTopViewArray;

   procedure setMainView (This : in out ViewSwapper; id : Integer) is
      viewGroup : ViewGroup_Access;
      index : Integer;
   begin
        viewGroup := ViewGroup_Access (This.activity.findViewById (This.rootViewId));
        if (id) /= (This.currentMainViewId) then
            for index in 0 .. (This.topViewArray'Length) - 1 loop
                viewGroup.removeView (This.topViewArray (index));
            end loop;
            for index in 0 .. (This.mainViewArray'Length) - 1 loop
                if (id) /= (This.mainViewArray (index).getId) then
                    viewGroup.removeView (This.mainViewArray (index));
                end if;
            end loop;
            for index in 0 .. (This.mainViewArray'Length) - 1 loop
                if (id) = (This.mainViewArray (index).getId) then
                    viewGroup.addView (This.mainViewArray (index));
                    This.currentMainViewId := id;
                end if;
            end loop;
            for index in 0 .. (This.topViewArray'Length) - 1 loop
                viewGroup.addView (This.topViewArray (index));
            end loop;
        end if;
   end setMainView;

begin
   null;
   NULL_VIEW_ARRAY := new View_Access_Array'(0 .. (0) - 1 => null);

end org.allbinary.android.ViewSwapper_Package;


