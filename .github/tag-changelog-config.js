module.exports = {
  types: [
    { types: ["feat", "feature"], label: "๐ New Features" },
    { types: ["fix", "bugfix"], label: "๐ Bugfixes" },
    { types: ["improvements", "enhancement"], label: "๐จ Improvements" },
    { types: ["perf"], label: "๐๏ธ Performance Improvements" },
    { types: ["build", "ci"], label: "๐๏ธ Build System" },
    { types: ["refactor"], label: "๐ช Refactors" },
    { types: ["doc", "docs"], label: "๐ Documentation Changes" },
    { types: ["test", "tests"], label: "๐ Tests" },
    { types: ["style"], label: "๐ Code Style Changes" },
    { types: ["chore"], label: "๐งน Chores" },
    { types: ["other"], label: "Other Changes" },
    { types: ["terraform-docs"], label: "terraform-docs"},
  ],

  excludeTypes: ["other", "terraform-docs"],

  renderTypeSection: function (label, commits) {
    let text = `\n## ${label}\n`;

    commits.forEach((commit) => {
      text += `- ${commit.subject}\n`;
    });

    return text;
  },

  renderChangelog: function (release, changes) {
    const now = new Date();
    return `# ${release} - ${now.toISOString().substr(0, 10)}\n` + changes + "\n\n";
  },
};