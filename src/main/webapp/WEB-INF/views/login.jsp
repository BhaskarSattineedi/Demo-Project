 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 


<!DOCTYPE html>
<html class="light" lang="en">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>IT Asset Management Login</title>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,container-queries"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&amp;display=swap"
        rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
        rel="stylesheet" />
    <script>
        tailwind.config = {
            darkMode: "class",
            theme: {
                extend: {
                    colors: {
                        primary: "#FFD200", // Shriram Brand Yellow
                        "primary-dark": "#e6bd00",
                        "brand-orange": "#ff6b00",
                        "background-light": "#ffffff",
                        "background-dark": "#111827",
                        "brand-blue": "#0a192f",
                        "professional-blue": "#2563eb",
                    },
                    fontFamily: {
                        display: ["Inter", "sans-serif"],
                    },
                    borderRadius: {
                        DEFAULT: "0.5rem",
                    },
                },
            },
        };
    </script>
    <style type="text/tailwindcss">
        body {
            font-family: 'Inter', sans-serif;
        }
        .bottom-border-input {
            border: none;
            border-bottom: 2px solid #e5e7eb;
            background: transparent !important;
            padding-left: 0;
            padding-right: 0;
        }
        .bottom-border-input:focus {
            box-shadow: none;
            border-bottom-color: #FFD200;
        }
        .dark .bottom-border-input {
            border-bottom-color: #374151;
        }
        .dark .bottom-border-input:focus {
            border-bottom-color: #FFD200;
        }
        .asset-glow {
            filter: drop-shadow(0 0 20px rgba(255, 210, 0, 0.15));
        }
    </style>
</head>

<body class="bg-background-light dark:bg-background-dark min-h-screen flex items-center justify-center p-0 md:p-4 transition-colors duration-300">
    <div class="w-full h-screen md:h-[600px] md:max-w-6xl flex flex-col md:flex-row shadow-2xl overflow-hidden md:rounded-2xl border border-gray-100 dark:border-gray-800">
        <div class="hidden md:flex md:w-3/5 bg-brand-blue relative flex-col items-center justify-center p-8 overflow-hidden">
            <div class="absolute top-[-10%] right-[-10%] w-96 h-96 bg-primary/10 rounded-full blur-3xl"></div>
            <div class="absolute bottom-[-10%] left-[-10%] w-96 h-96 bg-blue-500/10 rounded-full blur-3xl"></div>
            <div class="relative z-10 text-center mb-8">
                <h1 class="text-3xl lg:text-4xl font-bold text-white mb-3 tracking-tight">Managing Your <span
                        class="text-primary">IT Assets</span></h1>
                <div class="h-1 w-16 bg-primary mx-auto rounded-full"></div>
            </div>
            <div class="relative z-10 w-full max-w-lg grid grid-cols-2 lg:grid-cols-3 gap-3">
                <div
                    class="bg-white/5 backdrop-blur-md p-4 rounded-xl border border-white/10 flex flex-col items-center justify-center asset-glow transform hover:-translate-y-1 transition-transform">
                    <span class="material-symbols-outlined text-4xl text-primary mb-2">laptop_mac</span>
                    <span class="text-blue-100 font-medium text-xs">Laptops</span>
                </div>
                <div
                    class="bg-white/5 backdrop-blur-md p-4 rounded-xl border border-white/10 flex flex-col items-center justify-center asset-glow transform hover:-translate-y-1 transition-transform">
                    <span class="material-symbols-outlined text-4xl text-blue-400 mb-2">desktop_windows</span>
                    <span class="text-blue-100 font-medium text-xs">Desktops</span>
                </div>
                <div
                    class="bg-white/5 backdrop-blur-md p-4 rounded-xl border border-white/10 flex flex-col items-center justify-center asset-glow transform hover:-translate-y-1 transition-transform">
                    <span class="material-symbols-outlined text-4xl text-yellow-500 mb-2">tablet_android</span>
                    <span class="text-blue-100 font-medium text-xs">Tablets</span>
                </div>
                <div
                    class="bg-white/5 backdrop-blur-md p-4 rounded-xl border border-white/10 flex flex-col items-center justify-center asset-glow transform hover:-translate-y-1 transition-transform">
                    <span class="material-symbols-outlined text-4xl text-emerald-400 mb-2">print</span>
                    <span class="text-blue-100 font-medium text-xs">Printers</span>
                </div>
                <div
                    class="bg-white/5 backdrop-blur-md p-4 rounded-xl border border-white/10 flex flex-col items-center justify-center asset-glow transform hover:-translate-y-1 transition-transform lg:col-span-2">
                    <span class="material-symbols-outlined text-4xl text-purple-400 mb-2">router</span>
                    <span class="text-blue-100 font-medium text-xs">Data Cards &amp; Networking</span>
                </div>
            </div>
            <p class="mt-8 text-blue-200 text-center max-w-xs leading-relaxed text-xs opacity-70">
                Streamlined tracking, maintenance, and lifecycle management for your corporate hardware infrastructure.
            </p>
        </div>
        <div class="w-full md:w-2/5 bg-background-light dark:bg-background-dark flex flex-col justify-center p-8 md:p-10 lg:p-12 relative">
            <div class="flex justify-center mb-8">
            <img src="/assets/logo.png" 
                alt="Logo"
                class="h-10 w-auto object-contain" />
            </div>
            <div class="mb-6">
                <h2 class="text-xl font-bold text-gray-800 dark:text-white mb-1">Welcome Back</h2>
                <p class="text-xs text-gray-500 dark:text-gray-400">Please enter your credentials to access your
                    dashboard.</p>
            </div>
            <form class="space-y-6" onsubmit="return false;">
                <div class="space-y-1">
                    <label class="text-[10px] font-bold text-gray-500 dark:text-gray-400 uppercase tracking-widest"
                        for="userid">User ID</label>
                    <input
                        class="w-full bottom-border-input text-gray-800 dark:text-white placeholder-gray-400 focus:outline-none transition-all py-2 text-sm"
                        id="userid" name="userid" placeholder="Enter your Userid" type="text" />
                </div>
                <div class="space-y-1">
                    <label class="text-[10px] font-bold text-gray-500 dark:text-gray-400 uppercase tracking-widest"
                        for="password">Password</label>
                    <input
                        class="w-full bottom-border-input text-gray-800 dark:text-white placeholder-gray-400 focus:outline-none transition-all py-2 text-sm"
                        id="password" name="password" placeholder="••••••••" type="password" />
                </div>
                <div class="flex items-center justify-between">
                    <label class="flex items-center space-x-2 cursor-pointer group">
                        <input class="rounded border-gray-300 text-primary focus:ring-primary h-4 w-4"
                            type="checkbox" />
                        <span
                            class="text-xs text-gray-600 dark:text-gray-400 group-hover:text-gray-800 dark:group-hover:text-gray-200 transition-colors">Remember
                            me</span>
                    </label>
                    <a class="text-xs font-medium text-gray-600 dark:text-gray-400 hover:text-brand-orange transition-colors"
                        href="#">Forgot password?</a>
                </div>
                <div class="space-y-4 pt-2">
                    <button
                        class="w-full bg-primary hover:bg-primary-dark text-gray-900 font-bold py-3 px-6 rounded shadow-md shadow-yellow-500/10 transform active:scale-[0.99] transition-all flex items-center justify-center gap-2"
                        type="submit">
                        LOGIN
                        <span class="material-icons text-sm">arrow_forward</span>
                    </button>
                    <div class="flex flex-col items-center gap-2">
                        <a class="text-xs font-semibold text-professional-blue hover:text-blue-700 dark:text-blue-400 dark:hover:text-blue-300 flex items-center gap-1 transition-colors group"
                            href="#">
                            <span class="material-symbols-outlined text-base">add_circle</span>
                            Register New Asset
                        </a>
                    </div>
                </div>
            </form>
            <div class="mt-8 text-center">
                <p class="text-xs text-gray-500 dark:text-gray-400">
                    Don't have an account?
                    <a class="text-brand-orange font-semibold hover:underline" href="#">Contact Administrator</a>
                </p>
            </div>
            <div class="absolute bottom-4 left-0 w-full text-center px-8">
                <p class="text-[9px] text-gray-400 dark:text-gray-600 uppercase tracking-widest">
                    © 2024 Corporate IT Solutions.
                </p>
            </div>
        </div>
    </div>
</body>

</html>
