.class Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$5;
.super Ljava/lang/Object;
.source "ThemeEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;Landroid/content/Context;[Lorg/telegram/ui/ActionBar/ThemeDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/ThemeEditorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$5;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$5;->val$this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$5;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeName:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1800(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->saveCurrentTheme(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$5;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$5;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->dismiss()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$5;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->close()V

    return-void
.end method
