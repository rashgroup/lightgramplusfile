.class Lorg/telegram/ui/ThemeActivity$2$4;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemeActivity$2;

.field final synthetic val$alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemeActivity$2;Landroid/widget/EditText;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$2$4;->this$1:Lorg/telegram/ui/ThemeActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/ThemeActivity$2$4;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/telegram/ui/ThemeActivity$2$4;->val$alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$2$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$2$4;->val$editText:Landroid/widget/EditText;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-direct {v0}, Lorg/telegram/ui/Components/ThemeEditorView;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity$2$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".attheme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity$2$4;->this$1:Lorg/telegram/ui/ThemeActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ThemeEditorView;->show(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->saveCurrentTheme(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$2$4;->this$1:Lorg/telegram/ui/ThemeActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    # getter for: Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->access$000(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ThemeActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$2$4;->val$alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "themehint"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "themehint"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$2$4;->this$1:Lorg/telegram/ui/ThemeActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$2;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "CreateNewThemeHelp"

    const v2, 0x7f080196

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
