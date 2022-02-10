<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- JSTL Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�������� ���� - �ù����</title>

	<link rel="stylesheet" href="/resources/style/header.css">
    <link rel="stylesheet" href="/resources/style/footer.css">
    <link rel="stylesheet" href="/resources/style/color.css">
    <link rel="stylesheet" href="/resources/style/content-frame.css">
    <link rel="stylesheet" href="/resources/style/card-container.css">
    <link rel="stylesheet" href="/resources/style/list-frame.css">
    
    <style>
    	body {
            background-color: var(--COLOR-WHITE);
            margin: 0;

            /* no Scrollbar */
            -ms-overflow-style: none; /* IE and Edge */
            scrollbar-width: none; /* Firefox */
        }

        body::-webkit-scrollbar {
            display: none; /* Chrome, Safari, Opera*/
        }
 
        header {
            z-index: 10;
        }

        section {
            position: relative;
            width: 100%;
            min-height: 90vh;
            /* overflow: scroll; */
        }
    </style>
    
</head>
<body>
	<header>
        <%@ include file="/includes/header.jsp" %>
    </header>

    <section>
        <div class="content-frame">
            <div class="frame-image">
                <div class="inner">
                    <h2>�ù����</h2>
                </div>
            </div>
            <div class="frame-menu">
                <div class="inner menubar">
                    <ul>
                        <li class="menubar-icon">
                            <a href="/">
                                <div class="icon home"></div>
                            </a>
                        </li>
                        <li class="menubar-list">
                            <h3>�����ϱ�<span class="slick-arrow"></span></h3>      
                                        
                            <!-- Menu -->
                            <ul class="include menu">
                                <li class="menuitem">
                                    <a href="">�����ϱ�</a>
                                    <ul class="submenu">
                                        <li><a href=""></a>�ù�����</li>
                                        <li><a href=""></a>�ù����</li>
                                        <li><a href=""></a>����ð� �����ϴ�</li>
                                    </ul>
                                </li>
                                <li class="menuitem">
                                    <a href="">�������</a>
                                    <ul class="submenu">
                                        <li><a href="">���Ȱ��</a></li>
                                        <li><a href="">���а��</a></li>
                                    </ul>
                                </li>
                                <li class="menuitem">
                                    <a href="">�˾ƺ���</a>
                                    <ul class="submenu">
                                        <li><a href="">�������� ���� <wbr/>�Ұ�</a></li>
                                        <li><a href="" style="font-size: 13px;">�������� ���� <wbr/>�̾߱�</a></li>
                                        <li><a href="">��������</a></li>
                                        <li><a href="">�ڷ��</a></li>
                                        <li><a href="">�������</a></li>
                                    </ul>
                                </li>
                                <li class="menuitem">
                                    <a href="">����ù�ȸ��</a>
                                    <ul class="submenu">
                                        <li><a href="">����ù�ȸ�� <wbr/>�Ұ�</a></li>
                                        <li><a href="">����ù�ȸ�� <wbr/>�ҽ�</a></li>
                                    </ul>
                                </li>
                                <li class="menuitem">
                                    <a href="">�ù���������</a>
                                </li>
                            </ul>
                        </li>    
                        <li class="menubar-list">
                            <h3>�ù����<span class="slick-arrow"></span></h3>                        
                            <ul class="menu">
                                <li class="menuitem">
                                    <a href="">�ù�����</a>
                                </li>
                                <li class="menuitem">
                                    <a href="">�ù����</a>
                                </li>
                                <li class="menuitem">
                                    <a href="">����ð� �����ϴ�.</a>
                                </li>
                            </ul>
                        </li>
                    </ul>                
                </div>
            </div>
        </div>

        <div class="frame--header inner">
            <div class="rect discuss">
                
            </div>
            
            <div class="contents-session">
                <!-- ���ۼ� ��ư ��ġ -->
                <div class="contents--textarea">
                    <h2>��¼�� ��¼��</h2>
                    <span>����?</span>
                </div>
                <div class="contents--btns">
                    <button class="btn suggest">�ù���� �ۼ��ϱ�</button>
                </div>
            </div>

            <div class="contents-search">
                <!-- �˻� ��ġ -->
                
            </div>

            <div class="contents-tag">
                <!-- �±� ��ġ -->
                <a href="">#�̰Գ���</a>
                <a href="">#���å��</a>
                <a href="">#�����Ű�</a>
            </div>
            
        </div>
        <div class="contents">
            <div class="card-container">
                <div class="card-item discussion">
                    <div class="category">���</div>
                    <div class="title">������� ���� ��� ���� �ϼ���?</div>
                    <div class="content">����</div>
                    <div class="thumnail">
                        <img src="/upload/test/1643868555859_thumbnail.jpg" alt="����" />
                    </div>
                    <div class="icons">
                        <object class="icon hits auto-hidden"></object>
                        <span>212</span>
                        <object class="icon heart"></object>
                        <span>11</span>
                        <object class="icon comment"></object>
                        <span>12</span>
                        <object class="icon calendar auto-hidden"></object>
                        <span>2022-01-31 ~ 2022-02-16</span>
                    </div>
                    <a class="detail-btn" href="">��� ����</a>
                </div>
            </div>

            <div class="contents-navbar"></div>
        </div>
    </section>

    <footer>
        <%@ include file="/includes/footer.jsp" %>
    </footer>
    
    <script src="/resources/script/header.js"></script>
    <script src="/resources/script/content-frame.js"></script>
    <script src="/resources/script/card-container.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</body>
</html>