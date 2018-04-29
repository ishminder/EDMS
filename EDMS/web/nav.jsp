<nav>
    <ul>
        <li><button type="button" class="button" onclick="location.href = 'home.jsp'">Home</button></li>
        <li>
            <div class="dropdown">
                <button type="button" class="dropbutton">Reports</button>
                <div class="dropdown-content">
                    <a href="StaffReport.jsp">Staff</a>
                    <a href="ParentsReport.jsp">Parents</a>
                    <a href="StudentReport.jsp">Student</a>
                    <a href="AttendanceReport.jsp">Attendance</a>
                    <a href="AssignmentReport.jsp">Assignment</a>
                </div> 
            </div>
        </li>
        <li>
            <div class="dropdown">
                <button type="button" class="dropbutton">Add</button>
                <div class="dropdown-content">
                    <a href="StaffMember.jsp">Staff Member</a>
                    <a href="#">Circular</a>

                </div> 
            </div>
        </li>
        <li>
            <div class="dropdown">
                <button type="button" class="dropbutton">Remove</button>
                <div class="dropdown-content">
                    <a href="manageAssignment.jsp">Staff Member</a>
                </div> 
            </div>
        </li>
        <li><button type="button" class="button" onclick="location.href = 'LeaveApproval.jsp'">Leave Approval</button></li>

        <li><button type="button" class="button" onclick="location.href = 'http://localhost:8080/KPSCampusCare/logout.jsp'">Logout</button></li>
    </ul>
</nav>