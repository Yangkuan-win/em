<index.html>
<html lang="zh-Hant">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>互動式能源管理方案</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@400;500;700&display=swap" rel="stylesheet">
    <!-- Chosen Palette: Warm Neutral & Tech Green (bg-neutral-50, text-neutral-800, accent-teal-700) -->
    <!-- Application Structure Plan: SPA with a top navigation bar (Overview, Framework, Benefits, Process, Services) to re-architect the report into a user-driven journey. 'Framework' is the interactive centerpiece, 'Benefits' uses a chart for data, 'Process' uses an HTML timeline. This structure is chosen to answer a potential client's key questions ("What is it?", "How?", "Why?", "How?") more intuitively than a linear report. -->
    <!-- Visualization & Content Choices: 1. Core Framework (Sec 2): Goal(Show process) -> HTML/Tailwind 4-quadrant interactive tabs (JS-driven show/hide). Justification(Makes the core concept explorable, not static). 2. Benefits (Sec 4): Goal(Visualize savings) -> Chart.js Horizontal Bar Chart (Canvas). Justification(Makes % savings data impactful). 3. Process (Sec 5): Goal(Show steps) -> HTML/Tailwind vertical timeline. Justification(Intuitive for a linear process). 4. Architecture (Sec 3): Goal(Show flow) -> HTML/Tailwind flexbox diagram with Unicode arrows. Justification(Replicates diagram without SVG). -->
    <!-- CONFIRMATION: NO SVG graphics used. NO Mermaid JS used. -->
    <style>
        body {
            font-family: 'Noto Sans TC', sans-serif;
            background-color: #f8f9fa; /* bg-neutral-50 (light gray) */
        }
        .nav-button {
            @apply px-4 py-2 rounded-lg text-sm md:text-base font-medium text-neutral-600 transition-all duration-300;
        }
        .nav-button.active, .nav-button:hover {
            @apply text-teal-700 bg-teal-100;
        }
        .content-section {
            @apply p-4 md:p-8 bg-white rounded-2xl shadow-lg;
        }
        .framework-button {
            @apply w-full p-4 md:p-6 rounded-xl text-left transition-all duration-300 shadow-md flex items-center;
        }
        .framework-button.active {
            @apply bg-teal-700 text-white shadow-lg;
        }
        .framework-button:not(.active) {
            @apply bg-white text-neutral-800 hover:bg-neutral-100 hover:shadow-lg;
        }
        .framework-icon {
            @apply text-2xl md:text-3xl mr-4 flex-shrink-0 w-8 md:w-10 text-center;
        }
        .timeline-item {
            @apply relative pl-10 py-2 border-l-2 border-teal-300;
        }
        .timeline-dot {
            @apply absolute -left-3 top-4 w-5 h-5 bg-teal-600 rounded-full border-4 border-white;
        }
        .timeline-content {
            @apply text-neutral-700;
        }
        .card {
            @apply bg-white rounded-2xl shadow-xl p-6 md:p-8 transform transition-all duration-300 hover:shadow-2xl hover:-translate-y-1;
        }
    </style>
</head>
<body class="text-neutral-800">

    <!-- Header & Navigation -->
    <header class="sticky top-0 z-50 bg-white shadow-md">
        <nav class="container mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex items-center justify-between h-16">
                <div class="flex-shrink-0">
                    <h1 class="text-xl md:text-2xl font-bold text-teal-800">企業能源管理方案</h1>
                </div>
                <div class="hidden md:flex md:space-x-2">
                    <button class="nav-button active" data-target="overview">方案概覽</button>
                    <button class="nav-button" data-target="framework">核心架構</button>
                    <button class="nav-button" data-target="benefits">導入效益</button>
                    <button class="nav-button" data-target="process">執行流程</button>
                    <button class="nav-button" data-target="models">合作模式</button>
                </div>
                <div class="md:hidden">
                    <select id="mobile-nav" class="w-full rounded-lg border-gray-300 focus:border-teal-500 focus:ring-teal-500">
                        <option value="overview">方案概覽</option>
                        <option value="framework">核心架構</option>
                        <option value="benefits">導入效益</option>
                        <option value="process">執行流程</option>
                        <option value="models">合作模式</option>
                    </select>
                </div>
            </div>
        </nav>
    </header>

    <!-- Main Content Area -->
    <main class="container mx-auto p-4 sm:p-6 lg:p-8">

        <!-- Section 1: Overview (Default Visible) -->
        <section id="overview" class="page-section content-section">
            <h2 class="text-3xl font-bold text-teal-800 mb-4">方案概覽：打造可持續的能源未來</h2>
            <p class="text-lg text-neutral-700 leading-relaxed mb-6">
                本區塊將說明我們如何協助企業建立一套「可量化、可持續、可擴增」的能源管理系統。透過我們的專業方案，您不僅能顯著降低能源成本、提升使用效率，更能符合 ISO 50001 與淨零排放的未來趨勢。
            </p>
            <div class="grid md:grid-cols-2 gap-6">
                <div class="bg-teal-50 p-6 rounded-xl shadow-inner">
                    <h3 class="text-xl font-semibold text-teal-700 mb-2">方案目標 (Our Goal)</h3>
                    <p class="text-neutral-700">
                        我們的目標是透過先進的能源監測、智慧化的設備改善與 AI 數據分析，為您的企業量身打造專屬的能源管理體系。這套體系不僅是為了節能，更是導入一套可複製、可持續的管理模式，協助企業從容應對未來的能源挑戰。
                    </p>
                </div>
                <div class="bg-neutral-100 p-6 rounded-xl shadow-inner">
                    <h3 class="text-xl font-semibold text-neutral-800 mb-2">核心價值 (Core Value)</h3>
                    <p class="text-neutral-700">
                        我們相信「專業 + 數據 + AI」的力量。本方案將協助您將能源管理從「一次性工程」轉變為「持續改善」的企業文化，確保您在淨零轉型與能源價格波動的浪潮中，始終保持競爭優勢。
                    </p>
                </div>
            </div>
        </section>

        <!-- Section 2: Core Framework (Hidden) -->
        <section id="framework" class="page-section content-section hidden">
            <h2 class="text-3xl font-bold text-teal-800 mb-4">互動式核心架構</h2>
            <p class="text-lg text-neutral-700 leading-relaxed mb-6">
                我們的方案核心是一個完整的能源管理循環。請點擊下方四個階段，深入了解我們如何從數據收集到 AI 優化，為您打造閉環式的管理系統。
            </p>
            
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <!-- Framework Navigation -->
                <div class="flex flex-col space-y-4">
                    <button class="framework-button active" data-tab="tab1">
                        <span class="framework-icon">📊</span>
                        <div>
                            <h3 class="text-lg font-semibold">1. 能源數據建置與整合</h3>
                            <p class="text-sm opacity-90">建立能源數據庫，奠定分析基礎。</p>
                        </div>
                    </button>
                    <button class="framework-button" data-tab="tab2">
                        <span class="framework-icon">🔍</span>
                        <div>
                            <h3 class="text-lg font-semibold">2. 能源分析與 SEU 辨識</h3>
                            <p class="text-sm opacity-90">找出真正的能源浪費點與節能機會。</p>
                        </div>
                    </button>
                    <button class="framework-button" data-tab="tab3">
                        <span class="framework-icon">💡</span>
                        <div>
                            <h3 class="text-lg font-semibold">3. 節能改善建議與執行</h3>
                            <p class="text-sm opacity-90">不只是設備改善，更是全面性管理。</p>
                        </div>
                    </button>
                    <button class="framework-button" data-tab="tab4">
                        <span class="framework-icon">🤖</span>
                        <div>
                            <h3 class="text-lg font-semibold">4. AI 能源管理與持續優化</h3>
                            <p class="text-sm opacity-90">讓節能成為「持續改善」的過程。</p>
                        </div>
                    </button>
                </div>

                <!-- Framework Content Display -->
                <div class="bg-neutral-100 p-6 rounded-xl shadow-inner min-h-[300px] md:min-h-[400px]">
                    <div id="tab1" class="framework-content">
                        <h4 class="text-xl font-bold text-neutral-800 mb-3">1. 能源數據建置與整合</h4>
                        <ul class="list-disc pl-6 space-y-2 text-neutral-700">
                            <li>建置電力、冰水、空調、空壓等能耗監測</li>
                            <li>485、Wi-Fi、LoRa 等多種通訊整合</li>
                            <li>設置 Gateway、資料收集器與能源管理平台</li>
                            <li>佈建線路與通訊改善，確保數據穩定性</li>
                            <li>導入 EMS / SCADA / Carbon Box 能源平台</li>
                        </ul>
                    </div>
                    <div id="tab2" class="framework-content hidden">
                        <h4 class="text-xl font-bold text-neutral-800 mb-3">2. 能源分析與重要能源用途辨識 (SEU)</h4>
                        <ul class="list-disc pl-6 space-y-2 text-neutral-700">
                            <li>進行能源審查與 SEU 辨識</li>
                            <li>建立能源基準 (EnB) 與能源績效指標 (EnPI)</li>
                            <li>計算各設備能效並找出高能耗設備</li>
                            <li>進行關聯性分析 (產量、溫濕度、排程、負載)</li>
                        </ul>
                    </div>
                    <div id="tab3" class="framework-content hidden">
                        <h4 class="text-xl font-bold text-neutral-800 mb-3">3. 節能改善建議與專案執行</h4>
                        <p class="text-neutral-700 mb-2">依據不同系統，提出具體改善措施：</p>
                        <ul class="list-disc pl-6 space-y-1 text-neutral-700 text-sm">
                            <li><b>空壓系統：</b>洩漏偵測、壓力最佳化、VSD 優化</li>
                            <li><b>冰水系統：</b>泵浦改善、主機負載效率、kW/RT 管理</li>
                            <li><b>空調系統：</b>排程最佳化、節能模式、溫濕度管理</li>
                            <li><b>生產線：</b>製程能耗分析、稼動率優化、降低單位產品能耗</li>
                            <li><b>操作管理 (零成本)：</b>SOP 優化、啟停排程調整</li>
                        </ul>
                    </div>
                    <div id="tab4" class="framework-content hidden">
                        <h4 class="text-xl font-bold text-neutral-800 mb-3">4. AI 能源管理與持續優化</h4>
                        <ul class="list-disc pl-6 space-y-2 text-neutral-700">
                            <li>自動偵測異常能耗，對比正常工作範圍 (NWL)</li>
                            <li>預測性維護 (設備趨勢分析)</li>
                            <li>提供能耗改善建議 (排程/範圍/設備)</li>
                            <li>建立月/季/年節能報告，並進行同業比較</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section 3: Benefits (Hidden) -->
        <section id="benefits" class="page-section content-section hidden">
            <h2 class="text-3xl font-bold text-teal-800 mb-4">可視化的導入效益 📈</h2>
            <p class="text-lg text-neutral-700 leading-relaxed mb-6">
                導入我們的方案，您將獲得的不只是抽象的節能概念，而是具體、可量化的效益。本區塊將展示潛在的成本節省，以及數據透明化和管理制度化帶來的長期價值。
            </p>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8 items-center">
                <div>
                    <h3 class="text-2xl font-semibold text-neutral-800 mb-4">預期節能潛力</h3>
                    <p class="text-neutral-700 mb-6">
                        根據我們的經驗，不同系統的改善能帶來顯著的成本降低。下圖顯示了各主要領域的預期節能百分比，助您直觀了解投資回報。
                    </p>
                    <div class="chart-container relative w-full max-w-lg mx-auto h-64 md:h-80">
                        <canvas id="benefitsChart"></canvas>
                    </div>
                </div>
                <div class="space-y-4">
                    <div class="bg-teal-50 p-6 rounded-xl shadow-inner">
                        <h4 class="text-xl font-semibold text-teal-700 mb-2">數據透明化、可管理</h4>
                        <ul class="list-disc pl-5 text-neutral-700">
                            <li>建立即時能源地圖</li>
                            <li>即時監測異常能耗</li>
                            <li>自動生成管理報表</li>
                        </ul>
                    </div>
                    <div class="bg-neutral-100 p-6 rounded-xl shadow-inner">
                        <h4 class="text-xl font-semibold text-neutral-800 mb-2">管理制度化 (符合 ISO 50001)</h4>
                        <ul class="list-disc pl-5 text-neutral-700">
                            <li>協助建立能源政策</li>
                            <li>建立 SEU 與能源基準</li>
                            <li>完善內部審查制度</li>
                        </ul>
                    </div>
                    <div class="bg-yellow-50 p-6 rounded-xl shadow-inner">
                        <h4 class="text-xl font-semibold text-yellow-800 mb-2">協助取得政府補助</h4>
                        <p class="text-neutral-700">可搭配能源局節能補助、AI 補助、SBIR / TIIP 計畫等，最大化您的投資效益。</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section 4: Process (Hidden) -->
        <section id="process" class="page-section content-section hidden">
            <h2 class="text-3xl font-bold text-teal-800 mb-4">專案執行與系統架構</h2>
            <p class="text-lg text-neutral-700 leading-relaxed mb-6">
                我們採用嚴謹的專案流程與穩定的系統架構，確保方案從規劃到落地皆能順利執行。本區塊將展示我們的標準執行步驟與背後的技術架構。
            </p>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                <!-- Project Process -->
                <div>
                    <h3 class="text-2xl font-semibold text-neutral-800 mb-4">專案執行流程 (8 步驟)</h3>
                    <div class="relative">
                        <div class="timeline-item">
                            <div class="timeline-dot"></div>
                            <h4 class="font-semibold text-teal-700">1. 現場勘查與通訊評估</h4>
                        </div>
                        <div class="timeline-item">
                            <div class="timeline-dot"></div>
                            <h4 class="font-semibold text-teal-700">2. 設備清冊與監測規劃</h4>
                        </div>
                        <div class="timeline-item">
                            <div class="timeline-dot"></div>
                            <h4 class="font-semibold text-teal-700">3. 通訊整合與系統建置</h4>
                        </div>
                        <div class="timeline-item">
                            <div class="timeline-dot"></div>
                            <h4 class="font-semibold text-teal-700">4. 能源審查與 SEU 分析</h4>
                        </div>
                        <div class="timeline-item">
                            <div class="timeline-dot"></div>
                            <h4 class="font-semibold text-teal-700">5. 節能方案擬定</h4>
                        </div>
                        <div class="timeline-item">
                            <div class="timeline-dot"></div>
                            <h4 class="font-semibold text-teal-700">6. 改善專案執行</h4>
                        </div>
                        <div class="timeline-item">
                            <div class="timeline-dot"></div>
                            <h4 class="font-semibold text-teal-700">7. AI 監測與持續改善</h4>
                        </div>
                        <div class="timeline-item border-l-transparent">
                            <div class="timeline-dot"></div>
                            <h4 class="font-semibold text-teal-700">8. 績效驗證與成果報告</h4>
                        </div>
                    </div>
                </div>
                
                <!-- System Architecture -->
                <div>
                    <h3 class="text-2xl font-semibold text-neutral-800 mb-4">能源管理系統建置架構</h3>
                    <p class="text-neutral-700 mb-6">
                        我們採用標準化、高擴展性的架構收集數據，確保資料的穩定與安全。
                    </p>
                    <div class="flex flex-col space-y-4">
                        <div class="text-center p-4 bg-white rounded-lg shadow border border-gray-200">
                            <span class="text-xl">🏭</span>
                            <h4 class_="font-semibold text-neutral-700">耗電感測器 (Sensors)</h4>
                        </div>
                        <div class="text-center text-3xl font-bold text-teal-500">↓</div>
                        <div class="text-center p-4 bg-white rounded-lg shadow border border-gray-200">
                            <span class="text-xl">💻</span>
                            <h4 class="font-semibold text-neutral-700">Gateway</h4>
                        </div>
                        <div class="text-center text-3xl font-bold text-teal-500">↓</div>
                        <div class="text-center p-4 bg-white rounded-lg shadow border border-gray-200">
                            <span class="text-xl">📦</span>
                            <h4 class="font-semibold text-neutral-700">數據收集器 (Data Collector)</h4>
                        </div>
                        <div class="text-center text-3xl font-bold text-teal-500">↓</div>
                        <div class="text-center p-6 bg-teal-600 text-white rounded-lg shadow-lg">
                            <span class="text-xl">🖥️</span>
                            <h4 class="font-bold text-lg">能源管理平台</h4>
                            <p class="text-sm">(EMS / Carbon Box / SCADA)</p>
                        </div>
                    </div>
                    <div class="mt-6 bg-neutral-100 p-4 rounded-lg shadow-inner">
                        <h5 class="font-semibold text-neutral-800">支援通訊協定：</h5>
                        <p class="text-neutral-700 text-sm">485、Modbus、TCP/IP、Wi-Fi、乙太網路，並支援多區域資料安全整合。</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section 5: Models (Hidden) -->
        <section id="models" class="page-section content-section hidden">
            <h2 class="text-3xl font-bold text-teal-800 mb-4">彈性的合作模式</h2>
            <p class="text-lg text-neutral-700 leading-relaxed mb-6">
                我們提供多種合作方案，無論您是需要一次性的系統建置，或是長期的能源管理夥伴，我們都能提供最適合您的服務。
            </p>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6 md:gap-8">
                <!-- Plan A -->
                <div class="card border-t-4 border-neutral-400">
                    <h3 class="text-2xl font-bold text-neutral-800 mb-3">方案 A</h3>
                    <h4 class="text-lg font-semibold text-neutral-700 mb-4">一次性建置 + 節能改善</h4>
                    <p class="text-neutral-600 mb-5">
                        適合需要快速導入系統、完成特定節能專案的企業。
                    </p>
                    <ul class="list-disc pl-5 space-y-2 text-neutral-700">
                        <li>完整數據建置</li>
                        <li>深度能效分析</li>
                        <li>節能改善專案執行</li>
                    </ul>
                    <button class="w-full mt-6 bg-neutral-500 text-white font-semibold py-2 px-4 rounded-lg transition-all duration-300 hover:bg-neutral-600">
                        了解詳情
                    </button>
                </div>
                
                <!-- Plan B (Recommended) -->
                <div class="card border-t-4 border-teal-600 relative">
                    <span class="absolute top-0 right-0 -mt-3 mr-4 bg-teal-600 text-white text-xs font-bold px-3 py-1 rounded-full shadow-lg">建議方案</span>
                    <h3 class="text-2xl font-bold text-teal-800 mb-3">方案 B</h3>
                    <h4 class="text-lg font-semibold text-teal-700 mb-4">長期能源管理服務</h4>
                    <p class="text-neutral-600 mb-5">
                        讓節能成為持續的過程，由 AI 與專家團隊為您把關。
                    </p>
                    <ul class="list-disc pl-5 space-y-2 text-neutral-700">
                        <li>每月定期會議</li>
                        <li>AI 分析 + 異常偵測</li>
                        <li>持續改善追蹤</li>
                        <li>每季節能報告</li>
                    </ul>
                    <button class="w-full mt-6 bg-teal-600 text-white font-semibold py-2 px-4 rounded-lg transition-all duration-300 hover:bg-teal-700">
                        選擇方案
                    </button>
                </div>

                <!-- Plan C (Best Value) -->
                <div class="card border-t-4 border-yellow-500 relative">
                    <span class="absolute top-0 right-0 -mt-3 mr-4 bg-yellow-500 text-yellow-900 text-xs font-bold px-3 py-1 rounded-full shadow-lg">最划算</span>
                    <h3 class="text-2xl font-bold text-yellow-900 mb-3">方案 C</h3>
                    <h4 class="text-lg font-semibold text-yellow-800 mb-4">搭配能源補助專案</h4>
                    <p class="text-neutral-600 mb-5">
                        我們將協助您申請政府補助，大幅降低導入成本。
                    </p>
                    <ul class="list-disc pl-5 space-y-2 text-neutral-700">
                        <li>專業團隊協助取得補助</li>
                        <li>顯著降低導入成本</li>
                        <li>大幅增加改善 ROI</li>
                    </ul>
                    <button class="w-full mt-6 bg-yellow-500 text-yellow-900 font-semibold py-2 px-4 rounded-lg transition-all duration-300 hover:bg-yellow-600">
                        洽詢補助
                    </button>
                </div>
            </div>
        </section>

    </main>

    <footer class="text-center py-8 mt-12 border-t border-neutral-200 bg-white">
        <p class="text-neutral-600">&copy; 2025 企業能源管理方案. All Rights Reserved.</p>
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const navButtons = document.querySelectorAll('.nav-button');
            const mobileNav = document.getElementById('mobile-nav');
            const sections = document.querySelectorAll('.page-section');

            function showSection(targetId) {
                sections.forEach(section => {
                    if (section.id === targetId) {
                        section.classList.remove('hidden');
                    } else {
                        section.classList.add('hidden');
                    }
                });
                
                navButtons.forEach(button => {
                    if (button.dataset.target === targetId) {
                        button.classList.add('active');
                    } else {
                        button.classList.remove('active');
                    }
                });
                
                if (mobileNav.value !== targetId) {
                    mobileNav.value = targetId;
                }
            }

            navButtons.forEach(button => {
                button.addEventListener('click', () => {
                    showSection(button.dataset.target);
                });
            });

            mobileNav.addEventListener('change', () => {
                showSection(mobileNav.value);
            });

            const frameworkButtons = document.querySelectorAll('.framework-button');
            const frameworkContents = document.querySelectorAll('.framework-content');

            frameworkButtons.forEach(button => {
                button.addEventListener('click', () => {
                    const targetTab = button.dataset.tab;

                    frameworkContents.forEach(content => {
                        if (content.id === targetTab) {
                            content.classList.remove('hidden');
                        } else {
                            content.classList.add('hidden');
                        }
                    });

                    frameworkButtons.forEach(btn => {
                        if (btn.dataset.tab === targetTab) {
                            btn.classList.add('active');
                        } else {
                            btn.classList.remove('active');
                        }
                    });
                });
            });

            function initBenefitsChart() {
                const ctx = document.getElementById('benefitsChart');
                if (!ctx) return;
                
                const data = {
                    labels: ['空壓、冰水、空調', '生產線能效', '操作管理 (無成本)'],
                    datasets: [{
                        label: '預期節能潛力 (%)',
                        data: [30, 15, 10], 
                        backgroundColor: [
                            'rgba(15, 118, 110, 0.6)', // teal-700
                            'rgba(13, 148, 136, 0.6)', // teal-600
                            'rgba(20, 184, 166, 0.6)'  // teal-500
                        ],
                        borderColor: [
                            'rgba(15, 118, 110, 1)',
                            'rgba(13, 148, 136, 1)',
                            'rgba(20, 184, 166, 1)'
                        ],
                        borderWidth: 1,
                        data: [
                            { x: 30, y: '空壓、冰水、空調' },
                            { x: 15, y: '生產線能效' },
                            { x: 10, y: '操作管理 (無成本)' }
                        ],
                        
                    }]
                };

                new Chart(ctx.getContext('2d'), {
                    type: 'bar',
                    data: data,
                    options: {
                        indexAxis: 'y',
                        responsive: true,
                        maintainAspectRatio: false,
                        plugins: {
                            legend: {
                                display: false
                            },
                            tooltip: {
                                callbacks: {
                                    label: function(context) {
                                        let label = context.dataset.label || '';
                                        if (label) {
                                            label += ': ';
                                        }
                                        if (context.parsed.x !== null) {
                                            let range;
                                            if(context.label === '空壓、冰水、空調') range = '10% ~ 30%';
                                            else if(context.label === '生產線能效') range = '5% ~ 15%';
                                            else range = '3% ~ 10%';
                                            
                                            label += `${range}`;
                                        }
                                        return label;
                                    }
                                }
                            }
                        },
                        scales: {
                            x: {
                                beginAtZero: true,
                                title: {
                                    display: true,
                                    text: '節能潛力 (%)'
                                },
                                ticks: {
                                    callback: function(value) {
                                        return value + '%';
                                    }
                                }
                            },
                            y: {
                                ticks: {
                                    autoSkip: false,
                                    callback: function(value) {
                                        const label = this.getLabelForValue(value);
                                        if (label.length > 8) {
                                            return label.split('、').map(part => part.trim());
                                        }
                                        return label;
                                    }
                                }
                            }
                        }
                    }
                });
            }

            initBenefitsChart();
        });
    </script>
</body>
</html>
