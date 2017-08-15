.class Lorg/telegram/ui/LaunchActivity$21;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->turnOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Landroid/content/SharedPreferences$Editor;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$21;->this$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$21;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-boolean p3, p0, Lorg/telegram/ui/LaunchActivity$21;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$21;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "TurnOffLimo"

    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity$21;->val$enabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$21;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->restartApp()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
