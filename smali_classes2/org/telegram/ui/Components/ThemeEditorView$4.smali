.class Lorg/telegram/ui/Components/ThemeEditorView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThemeEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThemeEditorView;->animateToBoundsMaybe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ThemeEditorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$4;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$4;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeName:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1800(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->saveCurrentTheme(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$4;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->destroy()V

    return-void
.end method
