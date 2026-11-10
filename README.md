# Tokyo Christmas 2026｜東京聖誕活動攻略暨投票
手機優先的靜態網頁，包含 2026/11/23 東京聖誕活動列表、銀座／錦糸町交通提示、複選投票與暱稱欄位。

## 啟用多人共用投票
1. 建立 Supabase 專案：https://supabase.com
2. 在 SQL Editor 執行 `schema.sql`。
3. 到 Project Settings → API，取得 Project URL 與 anon/publishable key。
4. 開啟網站，在「共用投票設定」填入連線資訊並測試。
5. 同行者需要使用相同 Supabase 專案的 URL/key 才能共用票數。

> 注意：此範例為小型私人團體原型。匿名政策允許公開讀取及寫入；任何取得網站與連線資訊的人都可能操作投票。暱稱不是身分驗證，請勿用於敏感或正式選舉。

## GitHub Pages
此儲存庫包含 GitHub Actions Pages workflow。推送至 main 後可於 Settings → Pages 確認部署狀態；成功後網址通常為 https://elia1306.github.io/tokyo-christmas-2026/ 。
活動日期、營業時間與市集內容請以主辦單位官方公告為準。
