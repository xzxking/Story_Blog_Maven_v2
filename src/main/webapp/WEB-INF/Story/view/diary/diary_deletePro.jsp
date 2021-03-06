<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	
	<!-- 전체 -->
	<c:if test="${check==1 && d_diary == null}">
		<c:if test="${opt == null && search == null}">
		<script type="text/javascript">
			alert("삭제 되었습니다.");
		</script>
		<meta http-equiv="Refresh" content="0; url=${pageContext.request.contextPath}/diary/diary_board?email=${s_email}&pageNum=${pageNum}">
		</c:if>
		<c:if test="${opt != null && search != null}">
		<script type="text/javascript">
			alert("삭제 되었습니다.");
			document.location.href=
				'${pageContext.request.contextPath}/diary/diary_board?email=${s_email}&search=' + encodeURI('${search}') + '&opt=${opt}&pageNum=${pageNum}';
		</script>
		</c:if>
	</c:if>
	
	<!-- 개별 -->
	<c:if test="${check==1 && d_diary != null}">
		<c:if test="${opt == null && search == null}">	
		<script type="text/javascript">
			alert("삭제 되었습니다.");
			document.location.href=
				'${pageContext.request.contextPath}/diary/diary_board2?email=${s_email}&d_diary=' + encodeURI('${d_diary}') + '&pageNum=${pageNum}';
		</script>
		</c:if>
		<c:if test="${opt != null && search != null}">	
		<script type="text/javascript">
			alert("삭제 되었습니다.");
			document.location.href=
				'${pageContext.request.contextPath}/diary/diary_board2?email=${s_email}&d_diary=' 
						+ encodeURI('${d_diary}') + '&search=' + encodeURI('${search}') + '&opt=${opt}&pageNum=${pageNum}';
		</script>
		</c:if>
	</c:if>
	
	<c:if test="${check!=1}">
	<script type="text/javascript">
		alert("삭제 할 수 없습니다.");
		history.go(-1);
	</script>
	</c:if>	
</head>

<body>	
</body>

</html>